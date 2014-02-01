specs
defaultSpec
	<spec>
	^{ #Panel.
			#changeTableLayout.
			#listDirection:. #rightToLeft.
			#addMorph:. {#model. #startButton.}.
			#addMorph:. {#model. #stopButton.}.
			#addMorph:. {#model. #browseButton.}.
			#hResizing:. #spaceFill.
			#vResizing:. #shrinkWrap. }