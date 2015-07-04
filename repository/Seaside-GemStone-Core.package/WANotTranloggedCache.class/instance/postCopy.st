copying
postCopy
  super postCopy.
  mutex
    critical: [ 
      "At this point we are sharing the mutex with the original object. This means
	we can safely copy our dictionaries and our plugins."
      self keysByObject: copiedFrom keysByObject copy.
      self objectsByKey: copiedFrom objectsByKey copy.
      copiedFrom := nil.
      self setExpiryPolicy: self expiryPolicy copy.
      self setMissStrategy: self missStrategy copy.
      self setRemovalAction: self removalAction copy.
      self setReapingStrategy: self reapingStrategy copy ].
  self initializeMutex	"Now we're done and have all our own data so we want our own mutex."