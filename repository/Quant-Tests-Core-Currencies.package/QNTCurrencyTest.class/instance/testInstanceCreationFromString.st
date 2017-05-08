tests
testInstanceCreationFromString

	|instance|
	instance := 'EUR' asCurrency.
	self assert: instance code == #'EUR'
	
