private
unwindFrom: aSourceContext to: aTargetContext
	"Utilitiy method to unwind and terminate from aSourceContext to aTargetContext. This implementation uses Squeak specific code implemented as primitives and is pretty fast."

	aSourceContext unwindTo: aTargetContext.
	aSourceContext terminateTo: aTargetContext