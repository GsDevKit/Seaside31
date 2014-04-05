converting
pathIsUnencodedSafe
	"Answer wether the path can be safely converted to a String unencoded."

	"Path elements may be of different class, take a safe road"
	^ path isNil or: [
		path allSatisfy: [ :each | each class == (path at: 1) class]].
