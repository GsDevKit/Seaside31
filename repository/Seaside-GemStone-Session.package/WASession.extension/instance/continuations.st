*seaside-gemstone-session
continuations
  ^ true
    ifTrue: [ self notTranloggedDict at: self asOop ]
    ifFalse: [ continuations ]