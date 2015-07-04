public
store: anObject
  "Store anObject in the cache, generating a new random key. Return the key."

  | candidateKey |
  [ 
  candidateKey := WAKeyGenerator current keyOfLength: self keySize.
  self objectsByKey includesKey: candidateKey ]
    whileTrue.
  self at: candidateKey put: anObject.
  ^ candidateKey