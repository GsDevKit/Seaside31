accessing
tempAt: index

| ar |
ar := (continuation _localFrameContentsAt: level).
ar size < (10 + index) ifTrue: [^nil].
^ar at: (10 + index)