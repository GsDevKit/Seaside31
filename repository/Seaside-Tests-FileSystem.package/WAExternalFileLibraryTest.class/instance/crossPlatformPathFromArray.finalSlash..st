testing
crossPlatformPathFromArray: pathArray finalSlash: finalSlash
	| separator path|
	separator := String with: SpFilename new separator.
	
	path := String new.
	pathArray do: [:pathElement | 
		path := path, separator, pathElement ].

	finalSlash ifTrue: [ path:= path, separator]. 
	
	^ path
