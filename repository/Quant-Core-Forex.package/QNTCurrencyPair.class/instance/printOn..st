printing
printOn: aStream

	aStream 
		nextPutAll: self baseCurrency asString;
		nextPutAll: self counterCurrency asString.