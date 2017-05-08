tests
testPrinting

	self 
		assert: 10 EUR printString equals: '10.00 EUR';
		assert: 10.5 EUR printString equals: '10.50 EUR' 