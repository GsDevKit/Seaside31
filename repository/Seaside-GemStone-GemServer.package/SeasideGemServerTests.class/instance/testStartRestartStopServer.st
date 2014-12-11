tests
testStartRestartStopServer
  "just start/restart/stop ... without an http client cannot do much else"

  | gemServer portCount |
  gemServer := self gemServer.
  [ 
  gemServer startGems.
  (Delay forSeconds: 3) wait.
  portCount := self validatePidFile: gemServer shouldExist: true.
  self assert: portCount = gemServer defaultPortList size.
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  self validatePidFile: gemServer shouldExist: true ]
    ensure: [ 
      gemServer stopGems.
      (Delay forSeconds: 3) wait.
      self validatePidFile: gemServer shouldExist: false ]