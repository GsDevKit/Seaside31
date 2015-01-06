tests
testStartRestartStopServer
  "just start/restart/stop ... without an http client cannot do much else"

  [ 
  | gemServer |
  gemServer := self gemServer.
  [ 
  | statusReport portCount |
  gemServer startGems.
  (Delay forSeconds: 3) wait.
  portCount := self validatePidFile: gemServer shouldExist: true.
  self assert: portCount = gemServer defaultPortOrResourceNameList size.
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  self validatePidFile: gemServer shouldExist: true.
  statusReport := gemServer statusGems.
  Transcript
    cr;
    show: statusReport.
  self assert: statusReport lines size = (gemServer ports size + 2)	"+ maintenance vm" ]
    ensure: [ 
      gemServer stopGems.
      (Delay forSeconds: 3) wait.
      self validatePidFile: gemServer shouldExist: false ] ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: 'testStartRestartStopServer (Issue #59)';
        cr;
        show: ex description;
        cr;
        show: (GsProcess stackReportToLevel: 100).
      ex pass ]