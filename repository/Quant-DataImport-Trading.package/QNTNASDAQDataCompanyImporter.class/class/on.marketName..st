instance creation
on: aStream marketName: aString

	^(self new)
		initStream: aStream;
		marketName: aString;
		yourself