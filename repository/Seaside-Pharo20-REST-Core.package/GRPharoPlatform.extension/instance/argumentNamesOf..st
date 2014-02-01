*Seaside-Pharo20-REST-Core
argumentNamesOf: aCompiledMethod
	^ aCompiledMethod methodNode arguments collect: [ :each | each name ]