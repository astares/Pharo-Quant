private - importing
importURL: anURL marketName: aString

	| stream |
	stream := (self streamFromURL: anURL). 
	^(self on: stream marketName: aString)
		import;
		yourself