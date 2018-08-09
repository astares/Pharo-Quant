"
A system of money (monetary units) in common use, especially in a nation.

A currency is represented by a three letters code following ISO 4217 uniquely identifiying the currency. 




"
Class {
	#name : #QNTCurrency,
	#superclass : #Object,
	#instVars : [
		'code'
	],
	#classVars : [
		'KnownCurrencies'
	],
	#category : 'Quant-Core-Currencies-Model'
}

{ #category : #'instance creation' }
QNTCurrency class >> code: aSymbol [
	"Returns an instance of the receiver represented by the given symbol code"
	
	^self knownCurrencies at: aSymbol asSymbol ifAbsentPut: [ 
			(self new) 
				code: aSymbol;
				yourself ] 
	
]

{ #category : #'private accessing' }
QNTCurrency class >> knownCurrencies [
	"Return the already known currencies"
	
	^KnownCurrencies ifNil: [ KnownCurrencies := IdentityDictionary new ].
   
]

{ #category : #initialization }
QNTCurrency class >> reset [
	<script>

	KnownCurrencies := nil
]

{ #category : #comparision }
QNTCurrency >> = anotherCurrency [
	"Return true if the code matches"
	
	^code = anotherCurrency code
]

{ #category : #conversion }
QNTCurrency >> asCurrency [
	^self
]

{ #category : #accessing }
QNTCurrency >> code [
	"Return the currency code"
	
	^ code
]

{ #category : #accessing }
QNTCurrency >> code: aString [ 
	"Sets the currency code which has to be a symbol"
	
	code := aString asSymbol
]

{ #category : #comparision }
QNTCurrency >> hash [
	^self code hash
]

{ #category : #printing }
QNTCurrency >> printOn: aStream [

	aStream nextPutAll: self code asString
]
