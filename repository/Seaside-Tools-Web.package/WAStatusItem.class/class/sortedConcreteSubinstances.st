instance creation
sortedConcreteSubinstances
	^ ((self allSubclasses select: [ :each | each isAbstract not ])
		collect: [ :each | each new ])
			sorted