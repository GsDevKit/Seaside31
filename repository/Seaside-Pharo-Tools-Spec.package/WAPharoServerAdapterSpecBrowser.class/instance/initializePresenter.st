initialization
initializePresenter

	self adapters: WAServerManager default adaptors.
	
	listModel whenSelectedItemChanged: [ :selection |
		adaptor := selection.
		self disableAllButtons.
		selection isNil
			ifTrue: [
				textModel text: ''.
				textModel behavior: nil ]
	             ifFalse: [ 
				adaptor isStopped
					ifTrue: [ self enableStartButton ].
				adaptor isRunning
					ifTrue: [ self enableStopButton	 ].
				self enableBrowseButton.
				textModel text: (String streamContents: [ :stream |
			stream 
				nextPutAll: 'Type: '; nextPutAll: adaptor class name; nextPut: Character cr;
				nextPutAll: 'Port: '; nextPutAll: adaptor port greaseString; nextPut: Character cr;
				nextPutAll: 'Encoding: '; nextPutAll: adaptor codec name; nextPut: Character cr.
			adaptor additionalStatusOn: stream.
			stream
				nextPutAll: adaptor statusString ]) ]]
