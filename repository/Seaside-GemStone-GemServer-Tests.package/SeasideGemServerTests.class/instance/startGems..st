private
startGems: gemServer
  self staticRemoteServer
    ifTrue: [ 
      System commitTransaction.
      self
        notify:
          'evaluate on server: abort; /home/seaside3/gemServer interactiveStart='
            , self gemServerName ]
    ifFalse: [ 
      gemServer startGems.
      (Delay forSeconds: 3) wait ]