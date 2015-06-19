tests
testSimpleGet
  [ 
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
  self restartGems: gemServer.
  response := client get: url.
  self assert: response status = 200 ]
    ensure: [ self stopGems: gemServer ] ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: 'testSimpleGet error: ' , ex description;
        show: (GsProcess stackReportToLevel: 100).
      ex pass ]