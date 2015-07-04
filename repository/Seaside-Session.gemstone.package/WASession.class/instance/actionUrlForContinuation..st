accessing
actionUrlForContinuation: aContinuation
  ^ self
    actionUrlForKey:
      (self continuations
        store:
          (aContinuation
            setParent: self;
            yourself))