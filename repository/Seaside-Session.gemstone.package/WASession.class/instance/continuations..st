accessing
continuations: aWACache
  true
    ifTrue: [ self notTranloggedDict at: self asOop put: aWACache ]
    ifFalse: [ continuations := aWACache ]