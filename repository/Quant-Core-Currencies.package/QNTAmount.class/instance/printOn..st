printing
printOn: aStream

	self value printOn: aStream showingDecimalPlaces: self value scale.
	aStream space.
	aStream nextPutAll: currencyCode asString
	