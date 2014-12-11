tests
testWAGemStoneWalkbackErrorHandler
  "topaz session should crash..."

  | client gemServer port response testUrl simpleUrl |
  client := self httpClient.
  client
    ifNil: [ 
      "no client? ... skip it"
      ^ self ].
  gemServer := self gemServer yourself.
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