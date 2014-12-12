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
          WAGemStoneMaintenanceTask performTasks: count.	"Sleep for a minute"
          (Delay forSeconds: 60) wait.
          count := count + 1 ]
            on: self class breakpointExceptionSet
            do: [ :ex | 
              System inTransaction
                ifTrue: [ 
                  DebuggerLogEntry createContinuationLabeled: 'MTCE continuation'.
                  System commitTransaction.
                  System beginTransaction ]
                ifFalse: [ 
                  System beginTransaction.
                  DebuggerLogEntry
                    createContinuationLabeled: 'MTCE continuation'.
                  System commitTransaction ].
              ex isResumable
                ifTrue: [ ex resume ] ] ] ]
        fork.
  self serverInstance: self