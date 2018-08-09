"
An amount of money
"
Class {
	#name : #QNTAmount,
	#superclass : #Object,
	#instVars : [
		'value',
		'currencyCode'
	],
	#classVars : [
		'KnownCurrencies'
	],
	#category : 'Quant-Core-Currencies-Model'
}

{ #category : #'instance creation' }
QNTAmount class >> value: aNumber currency: aCurrency [ 
	"Return a new instance of the receiver with the given value and currency."
	
	^self value: aNumber currencyCode: aCurrency currencyCode
]

{ #category : #'instance creation' }
QNTAmount class >> value: aNumber currencyCode: aCurrencyCode [ 
	"Return a new instance of the receiver with the given value and currency code."
	
	^(self new)
		value: aNumber;
		currencyCode: aCurrencyCode;
		yourself 
		
]

{ #category : #arithmetic }
QNTAmount >> * aNumber [
	^ QNTAmount value: value * aNumber value currencyCode: currencyCode
]

{ #category : #arithmetic }
QNTAmount >> + anotherAmount [

	^QNTAmount 
		value: value + anotherAmount value
		currencyCode: currencyCode
]

{ #category : #arithmetic }
QNTAmount >> - anotherAmount [

	^QNTAmount 
		value: value - anotherAmount value
		currencyCode: currencyCode
]

{ #category : #arithmetic }
QNTAmount >> / aNumber [

	^QNTAmount 
		value: value / aNumber value
		currencyCode: currencyCode
]

{ #category : #arithmetic }
QNTAmount >> // anInteger [ 
	^self value // anInteger 
]

{ #category : #comparing }
QNTAmount >> < anotherAmount [

	^self value < anotherAmount value
]

{ #category : #comparision }
QNTAmount >> = anObject [
	"Return true if the code matches"
	
	(self species == anObject species
		and: [self currencyCode = anObject currencyCode])
		ifFalse: [^ false].
		
	^self value = anObject value
]

{ #category : #other }
QNTAmount >> adaptToNumber: aNumber andSend: selector [ 
	
	^ self perform: selector with: aNumber
]

{ #category : #accessing }
QNTAmount >> currency [
	"Return the currency"
	
	^QNTCurrency code: self currencyCode 
]

{ #category : #accessing }
QNTAmount >> currencyCode [

	^currencyCode 
]

{ #category : #accessing }
QNTAmount >> currencyCode: aCode [

	currencyCode := aCode 
]

{ #category : #testing }
QNTAmount >> isZero [

	^value = 0
]

{ #category : #printing }
QNTAmount >> printOn: aStream [

	self value printOn: aStream showingDecimalPlaces: self value scale.
	aStream space.
	aStream nextPutAll: currencyCode asString
	
]

{ #category : #intervals }
QNTAmount >> to: stop [
	"Answer an Interval from the receiver up to the argument, stop, 
	incrementing by 1."

	^Interval from: self to: stop by: 1
]

{ #category : #intervals }
QNTAmount >> to: stop by: step [
	"Answer an Interval from the receiver up to the argument, stop, 
	incrementing by step."

	^Interval from: self to: stop by: step value
]

{ #category : #accessing }
QNTAmount >> value [
	^value
]

{ #category : #accessing }
QNTAmount >> value: aNumber [
	value := aNumber
]
