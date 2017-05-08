comparision
= anObject
	"Return true if the code matches"
	
	(self species == anObject species
		and: [self currencyCode = anObject currencyCode])
		ifFalse: [^ false].
		
	^self value = anObject value