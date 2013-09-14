actions
evaluate
	^ self object class evaluatorClass new
		evaluate: input
		in: thisContext
		to: self object