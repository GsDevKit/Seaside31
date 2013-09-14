*seaside-gemstone-flow
baseOverridesSeasideGemStoneFlowGsProcess: known
	self
		addTo: known
		forBehavior: GsProcess
		overrides: {
			#'_callUnwindBlocks' -> '_callUnwindBlocks

"Private.  Evaluate each of the unwind blocks (see ensure: and ifCurtailed:)."

| unwindBlocks |
unwindBlocks := Array new .
self stackDepth ~~ nil ifTrue:
  [1 to: self stackDepth do:
     [:j | self _addUnwindBlockAt: j to: unwindBlocks.]].
unwindBlocks do: [:each | each value].
'.
	}