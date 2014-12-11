private
runServerErrorTestUsing: exceptionHandlerClass
  | client gemServer port response testUrl simpleUrl |
  client := self httpClient.
  client
    ifNil: [ 
      "no client? ... skip it"
      ^ self ].
  gemServer := self gemServer.
  port := gemServer ports first.
  testUrl := 'http://localhost:' , port printString , '/tests/gemServerError'.
  simpleUrl := 'http://localhost:' , port printString , '/tests/gemServerSimple'.
  [ 
  WAGemServerSimpleTestErrorPage initializeWithErrorHandler: exceptionHandlerClass.
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  response := client get: testUrl.
  self assert: response status = 500.
  response := self httpClient get: simpleUrl.
  self assert: response status = 200	"server should not crash" ]
    ensure: [ 
      gemServer stopGems.
      (Delay forSeconds: 3) wait ]