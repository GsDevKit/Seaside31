tests
testSimpleGet
  | client gemServer port url response |
  client := self httpClient.
  client
    ifNil: [ 
      "no client? ... skip it"
      ^ self ].
  gemServer := self gemServer.
  port := gemServer ports first.
  url := 'http://localhost:' , port printString , '/tests/gemServerSimple'.
  [ 
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  response := client get: url.
  self assert: response status = 200 ]
    ensure: [ 
      gemServer stopGems.
      (Delay forSeconds: 3) wait ]