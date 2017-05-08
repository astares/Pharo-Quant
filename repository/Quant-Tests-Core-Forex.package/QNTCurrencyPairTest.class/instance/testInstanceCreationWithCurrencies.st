tests
testInstanceCreationWithCurrencies

	| pair |
	pair := QNTCurrencyPair baseCurrency: #EUR asCurrency counterCurrency: #USD asCurrency.
	self assert: pair printString equals: 'EURUSD'