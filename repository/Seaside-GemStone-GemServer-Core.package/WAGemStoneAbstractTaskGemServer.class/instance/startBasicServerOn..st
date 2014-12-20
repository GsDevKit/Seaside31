service instance-server
startBasicServerOn: ignored
  "start server in current vm. expected to return."

  self
    maintenanceProcess:
      [ 
      | count |
      count := 0.
      [ true ]
        whileTrue: [ 
          [ 
          "run maintenance tasks"
          self taskClass performTasks: count.	"Sleep for a minute"
          (Delay forMilliseconds: self delayTimeMs) wait.
          count := count + 1 ]
            on: self class gemServerExceptionSet
            do: [ :ex | 
              System inTransaction
                ifTrue: [ 
                  DebuggerLogEntry createContinuationLabeled: 'SVCE continuation'.
                  System commitTransaction.
                  System beginTransaction ]
                ifFalse: [ 
                  System beginTransaction.
                  DebuggerLogEntry
                    createContinuationLabeled: 'SVCE continuation'.
                  System commitTransaction ].
              ex isResumable
                ifTrue: [ ex resume ] ] ] ]
        fork.
  self serverInstance: self	"the maintenanceProcess is session-specific"