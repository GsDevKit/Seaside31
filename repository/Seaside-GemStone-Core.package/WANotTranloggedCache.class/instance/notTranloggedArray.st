not tranlogged
notTranloggedArray
  ^ self notTranloggedDict
    at: self
    ifAbsent: [ self notTranloggedDict at: self put: (Array new: 2) ]