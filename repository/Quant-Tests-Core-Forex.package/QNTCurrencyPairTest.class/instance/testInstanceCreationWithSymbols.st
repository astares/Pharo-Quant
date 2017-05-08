tests
testInstanceCreationWithSymbols

	| pair |
	pair := QNTCurrencyPair baseCurrency: #EUR counterCurrency: #USD.
	self assert: pair printString equals: 'EURUSD'