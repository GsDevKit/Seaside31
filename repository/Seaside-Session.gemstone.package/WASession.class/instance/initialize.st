initialization
initialize
  super initialize.
  self initializeFilters.
  self continuations: self createCache