rendering
renderValidationOn: html
	html anchor
		callback: [
			self call: (WAValidationTestComponent new
				validateWith: [ :value |
					value ifFalse: [
						WAValidationNotification signal: 'Validation Failed!' ] ];
				yourself).
			self inform: 'Validation Suceeded!' ];
		with: 'Start'