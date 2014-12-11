tests
testServerSideError
  | client gemServer port url response |
  client := self httpClient.
  client
    ifNil: [ 
      "no client? ... skip it"
      ^ self ].
  gemServer := self gemServer.
  port := gemServer ports first.
  url := 'http://localhost:' , port printString , '/tests/gemServerError'.
  [ 
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  response := client get: url.
  self assert: response status = 500.
  response := self httpClient
    get: 'http://localhost:' , port printString , '/tests/gemServerSimple'.
  self assert: response status = 200	"server should not crash" ]
    ensure: [ 
      gemServer stopGems.
      (Delay forSeconds: 3) wait ]