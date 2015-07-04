not tranlogged
notTranloggedDict
  ^ NotTranloggedGlobals
    at: self notTranloggedKey
    ifAbsent: [ 
      NotTranloggedGlobals
        at: self notTranloggedKey
        put: IdentityKeyValueDictionary new ]