description
describeOn: config
	(config string: #directory)
		label: 'Directory';
		comment: 'The base directory to serve files from.';
		default: (SpFilename named: 'xxxDoesNotExists') asAbsoluteFilename directory asString. "#asString on SPFilename"
	(config boolean: #listing)
		label: 'Allow Listing';
		comment: 'Enable listing of directory entries.';
		default: false