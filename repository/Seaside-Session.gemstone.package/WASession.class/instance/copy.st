copying
copy
  "need to be able to copy the not tranlogged data from the receiver during postCopy"

  | copy |
  copy := self shallowCopy.
  copy copiedFrom: self.
  ^ copy postCopy