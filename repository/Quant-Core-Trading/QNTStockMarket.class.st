"
A stock market (examples are NASDAQ, NYSE or AMEX)
"
Class {
	#name : #QNTStockMarket,
	#superclass : #QNTNamedObject,
	#instVars : [
		'companies',
		'businessSectors',
		'industries'
	],
	#classVars : [
		'Markets'
	],
	#category : 'Quant-Core-Trading-Model'
}

{ #category : #accessing }
QNTStockMarket class >> markets [
	"Lazy initialize the markets"
	
	^Markets ifNil: [ Markets := OrderedCollection new ].
]

{ #category : #accessing }
QNTStockMarket >> businessSectors [
	^ businessSectors
]

{ #category : #accessing }
QNTStockMarket >> businessSectors: anObject [
	businessSectors := anObject
]

{ #category : #accessing }
QNTStockMarket >> companies [
	^ companies
]

{ #category : #accessing }
QNTStockMarket >> companies: anObject [
	companies := anObject
]

{ #category : #accessing }
QNTStockMarket >> industries [
	^ industries
]

{ #category : #accessing }
QNTStockMarket >> industries: anObject [
	industries := anObject
]

{ #category : #initialization }
QNTStockMarket >> initialize [
	super initialize.
	companies := OrderedCollection new.
	businessSectors := OrderedCollection new.
	industries := OrderedCollection new.
]
