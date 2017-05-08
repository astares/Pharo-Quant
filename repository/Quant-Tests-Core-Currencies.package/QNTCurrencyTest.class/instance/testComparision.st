tests
testComparision

	self 
		assert: (QNTCurrency code: 'EUR') = (QNTCurrency code: 'EUR');
		assert: (QNTCurrency code: 'EUR') = (QNTCurrency code: #'EUR')