instance creation
code: aSymbol
	"Returns an instance of the receiver represented by the given symbol code"
	
	^self knownCurrencies at: aSymbol asSymbol ifAbsentPut: [ 
			(self new) 
				code: aSymbol;
				yourself ] 
	