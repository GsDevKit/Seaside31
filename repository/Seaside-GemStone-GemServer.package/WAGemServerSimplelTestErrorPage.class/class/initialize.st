initialization
initialize
  "self initialize"

  (WAAdmin register: self asApplicationAt: 'tests/gemServerError')
    preferenceAt: #'sessionClass'
    put: WAExpirySession