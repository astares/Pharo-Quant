"
Test case for currencies
"
Class {
	#name : #QNTCurrencyTest,
	#superclass : #TestCase,
	#category : 'Quant-Tests-Core-Currencies-Model'
}

{ #category : #tests }
QNTCurrencyTest >> testComparision [

	self 
		assert: (QNTCurrency code: 'EUR') = (QNTCurrency code: 'EUR');
		assert: (QNTCurrency code: 'EUR') = (QNTCurrency code: #'EUR')
]

{ #category : #tests }
QNTCurrencyTest >> testInstanceCreationFromString [

	|instance|
	instance := 'EUR' asCurrency.
	self assert: instance code == #'EUR'
	

]

{ #category : #tests }
QNTCurrencyTest >> testInstanceCreationFromSymbols [

	|instance|
	instance := #'EUR' asCurrency.
	self assert: instance code == #'EUR'
	

]

{ #category : #tests }
QNTCurrencyTest >> testKeepIdentity [

	self assert: (QNTCurrency code: 'EUR') == (QNTCurrency code: 'EUR')
]
