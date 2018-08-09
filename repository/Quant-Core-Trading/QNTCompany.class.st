"
A company
"
Class {
	#name : #QNTCompany,
	#superclass : #QNTNamedObject,
	#instVars : [
		'symbol',
		'lastSale',
		'marketCap',
		'yearOfIPO',
		'businessSector',
		'industry',
		'summaryQuote'
	],
	#category : 'Quant-Core-Trading-Model'
}

{ #category : #'instance creation' }
QNTCompany class >> symbol: aSymbol named: aName [

	^(self named: aName)
		symbol: aSymbol;
		yourself
]

{ #category : #accessing }
QNTCompany >> businessSector [
	^ businessSector
]

{ #category : #accessing }
QNTCompany >> businessSector: anObject [
	businessSector := anObject
]

{ #category : #accessing }
QNTCompany >> industry [
	^ industry
]

{ #category : #accessing }
QNTCompany >> industry: anObject [
	industry := anObject
]

{ #category : #accessing }
QNTCompany >> lastSale [
	^ lastSale
]

{ #category : #accessing }
QNTCompany >> lastSale: anObject [
	lastSale := anObject
]

{ #category : #accessing }
QNTCompany >> marketCap [
	^ marketCap
]

{ #category : #accessing }
QNTCompany >> marketCap: anObject [
	marketCap := anObject
]

{ #category : #printing }
QNTCompany >> printOn: aStream [

	self name printOn: aStream
]

{ #category : #accessing }
QNTCompany >> summaryQuote [
	^ summaryQuote
]

{ #category : #accessing }
QNTCompany >> summaryQuote: anObject [
	summaryQuote := anObject
]

{ #category : #accessing }
QNTCompany >> symbol [
	^ symbol
]

{ #category : #accessing }
QNTCompany >> symbol: anObject [
	symbol := anObject
]

{ #category : #accessing }
QNTCompany >> yearOfIPO [
	^ yearOfIPO
]

{ #category : #accessing }
QNTCompany >> yearOfIPO: anObject [
	yearOfIPO := anObject
]
