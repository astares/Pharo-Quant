instance creation
value: aNumber currencyCode: aCurrencyCode 
	"Return a new instance of the receiver with the given value and currency code."
	
	^(self new)
		value: aNumber;
		currencyCode: aCurrencyCode;
		yourself 
		