initialization
initialize
  | vmName |
  super initialize.
  vmName := self defaultMaintenanceVmName.
  self
    maintenanceVm:
      ((GemServerRegistry gemServerNamed: vmName)
        ifNil: [ MaintenanceVmGemServer register: vmName ])