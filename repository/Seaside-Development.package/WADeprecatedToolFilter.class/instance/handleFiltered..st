processing
handleFiltered: aRequestContext 
	[ super handleFiltered: aRequestContext ] 
		on: GRDeprecatedApiNotification
		do: [ :notification | self deprecated: notification ]