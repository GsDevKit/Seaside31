accessing
project
	project := super project.
	project loadType: #'atomic'.
	^ project