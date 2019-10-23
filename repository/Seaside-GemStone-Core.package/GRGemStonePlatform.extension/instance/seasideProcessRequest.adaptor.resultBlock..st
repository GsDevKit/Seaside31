*seaside-gemstone-core
seasideProcessRequest: aNativeRequest adaptor: adaptor resultBlock: resultBlock
  | result retryWithNoRetryIncrement |
  retryWithNoRetryIncrement := self class retryWithNoRetryIncrement.
  [ 
  self retryDelays
    do: [ :retryDelay | 
      | theRetryDelay |
      theRetryDelay := retryDelay.
      result := retryWithNoRetryIncrement.
      [ result == retryWithNoRetryIncrement	"retry until successful or retry limit exceeded" ]
        whileTrue: [ 
          (result := self
            seasideProcessRequestWithRetry: aNativeRequest
            resultBlock: resultBlock) ~~ nil
            ifTrue: [ 
              result == retryWithNoRetryIncrement
                ifFalse: [ ^ result ].
              theRetryDelay := 100	"100 ms delay when waiting for session lock" ] ].
      System _sessionCacheStatAt: 2 put: (System _sessionCacheStatAt: 2) + 1.	"requests retried"
      (Delay forMilliseconds: theRetryDelay) wait ].	"exceeded retry limit"
  ^ adaptor
    internalServerErrorMessage:
      'Too many retries: ' , (self retryDelays size + 1) printString ]
    on: Error
    do: [ :ex | 
      self doAbortTransaction.
      result := adaptor internalServerErrorMessage: ex description.	"Do an explicit return. Because of the abort above, the default action for an exception (resume) is set. see bug39246."
      ex return: nil ].
  ^ result