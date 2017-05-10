private - utilities
businessSectorFrom: aString 
	^businessSectors at: aString ifAbsentPut: [ 
		market businessSectors add: (QNTBusinessSector named: aString) ] 