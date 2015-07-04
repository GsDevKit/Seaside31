public
at: aKey put: anObject
  "Store anObject in the cache, using the given key. Return the value."

  mutex
    critical: [ 
      self objectsByKey at: aKey put: anObject.
      self keysByObject at: anObject put: aKey.
      self notifyStored: anObject key: aKey ].
  ^ anObject