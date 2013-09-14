deprecated
browser
	"Contains flags for the useragent, read from navigator.userAgent."

	self 
		greaseDeprecatedApi: 'JQueryClass>>#browser'
		details: 'Use #support properties instead.'.
	self access: 'browser'