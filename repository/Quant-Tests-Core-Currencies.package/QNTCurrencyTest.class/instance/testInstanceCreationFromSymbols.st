tests
testInstanceCreationFromSymbols

	|instance|
	instance := #'EUR' asCurrency.
	self assert: instance code == #'EUR'
	
