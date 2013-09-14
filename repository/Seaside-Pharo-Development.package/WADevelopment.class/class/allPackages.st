accessing-packages
allPackages
	"Answer all Seaside related packages sorted alphabetically."
	
	^ GRPackage packages sort: [ :a :b | a name < b name ]