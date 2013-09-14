private
contentsOfFile: aFilename
	| stream |
	stream := aFilename readStream.
	^[
		stream binary.
		stream upToEnd ]
		ensure: [ stream close ]