tools
cleanupCategories
	"Remove all the empty categories and fix common inconsistencies in categorie names and protocols."
	"self cleanupCategories"

	| cleanup new |
	cleanup := [ :class :protocol |
		(new := protocol asLowercase).
		(new = #'initialize-release' or: [ new = #'class-initialization' ])
			ifTrue: [ new := #initialization ].
		(new = #'instance-creation')
			ifTrue: [ new := #'instance creation' ].
		((class includesBehavior: TestCase) and: [ (protocol = #'testing' or: [ protocol beginsWithSubCollection: #'testing-' ]) and: [ (class organization listAtCategoryNamed: protocol) allSatisfy: [ :each | each beginsWithSubCollection: #test ] ] ])
			ifTrue: [ new := ('tests' , (protocol allButFirst: 7)) asSymbol ].
		(new = protocol)
			ifFalse: [ class organization renameCategory: protocol toBe: new ].
		class organization removeEmptyCategories ].
	Smalltalk organization removeEmptyCategories.
	self allPackages
		do: [ :each |
			| package |
			package := PackageInfo named: each name.
			package classesAndMetaClasses do: [ :class |
				(package coreCategoriesForClass: class)
					do: [ :protocol | cleanup value: class value: protocol ] ].
			package extensionClasses do: [ :class |
				(package extensionCategoriesForClass: class)
					do: [ :protocol | cleanup value: class value: protocol ] ] ]
		displayingProgress: 'cleaning up'