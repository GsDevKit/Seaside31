copying
postCopy
  super postCopy.
  self continuations: copiedFrom continuations copy.
  copiedFrom := nil