private
bodyFor: anError
	^ WAStringEmailBody string: (String streamContents: [ :stream | 
		anError signalerContext errorReportOn: stream ])