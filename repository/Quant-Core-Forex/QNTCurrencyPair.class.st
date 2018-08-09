"
A currency pair
"
Class {
	#name : #QNTCurrencyPair,
	#superclass : #Object,
	#instVars : [
		'baseCurrency',
		'counterCurrency'
	],
	#category : 'Quant-Core-Forex-Model'
}

{ #category : #'instance creation' }
QNTCurrencyPair class >> baseCurrency: baseCurrency counterCurrency: counterCurrency [ 

	^(self new)
		baseCurrency: baseCurrency asCurrency;
		counterCurrency: counterCurrency asCurrency;
		yourself 
]

{ #category : #examples }
QNTCurrencyPair class >> eurusd [

	^QNTCurrencyPair baseCurrency: #EUR counterCurrency: #USD.
]

{ #category : #accessing }
QNTCurrencyPair >> baseCurrency [
	^ baseCurrency
]

{ #category : #accessing }
QNTCurrencyPair >> baseCurrency: anObject [
	baseCurrency := anObject 
]

{ #category : #accessing }
QNTCurrencyPair >> counterCurrency [
	^ counterCurrency
]

{ #category : #accessing }
QNTCurrencyPair >> counterCurrency: anObject [
	counterCurrency := anObject
]

{ #category : #printing }
QNTCurrencyPair >> printOn: aStream [

	aStream 
		nextPutAll: self baseCurrency asString;
		nextPutAll: self counterCurrency asString.
]
