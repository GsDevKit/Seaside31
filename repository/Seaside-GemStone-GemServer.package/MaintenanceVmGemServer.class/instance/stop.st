server compat
stop
  self maintenanceProcess
    ifNotNil: [ :proc | 
      self maintenanceProcess: nil.
      proc terminate ]