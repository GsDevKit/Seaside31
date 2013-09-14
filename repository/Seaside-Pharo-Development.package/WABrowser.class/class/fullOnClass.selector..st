instance creation
fullOnClass: aClass selector: aSelector
	^ self new model: (Browser new setClass: aClass selector: aSelector)