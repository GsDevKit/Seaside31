tests
testWAGemStoneWalkbackErrorHandlerInteractive
  "set debugMode on gemServer, since you would normally use WAGemStoneWalkbackErrorHandler
  interactively and you want the exception passed to your debugger ... when run remotely 
  the topaz session crashes"

  | client gemServer port response testUrl simpleUrl |
  client := self httpClient.
  client
    ifNil: [ 
      "no client? ... skip it"
      ^ self ].
  gemServer := self gemServer
    debugMode: true;
    yourself.
  port := gemServer ports first.
  testUrl := 'http://localhost:' , port printString , '/tests/gemServerError'.
  simpleUrl := 'http://localhost:' , port printString , '/tests/gemServerSimple'.
  [ 
  | exceptionSeen |
  WAGemServerSimpleTestErrorPage
    initializeWithErrorHandler: WAGemStoneWalkbackErrorHandler.
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  exceptionSeen := false.
  [ client get: testUrl ]
    on: ConnectionClosed
    do: [ :ex | 
      "remote server crashed ... good"
      exceptionSeen := true ].
  self assert: exceptionSeen ]
    ensure: [ 
      gemServer stopGems.
      (Delay forSeconds: 3) wait ]