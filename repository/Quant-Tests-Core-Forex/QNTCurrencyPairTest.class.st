"
Unit test for currency pairs
"
Class {
	#name : #QNTCurrencyPairTest,
	#superclass : #TestCase,
	#category : 'Quant-Tests-Core-Forex-Model'
}

{ #category : #tests }
QNTCurrencyPairTest >> testInstanceCreationWithCurrencies [

	| pair |
	pair := QNTCurrencyPair baseCurrency: #EUR asCurrency counterCurrency: #USD asCurrency.
	self assert: pair printString equals: 'EURUSD'
]

{ #category : #tests }
QNTCurrencyPairTest >> testInstanceCreationWithSymbols [

	| pair |
	pair := QNTCurrencyPair baseCurrency: #EUR counterCurrency: #USD.
	self assert: pair printString equals: 'EURUSD'
]
