"
A business sector
"
Class {
	#name : #QNTBusinessSector,
	#superclass : #QNTNamedObject,
	#instVars : [
		'companies'
	],
	#category : 'Quant-Core-Trading-Model'
}

{ #category : #accessing }
QNTBusinessSector >> companies [
	^ companies
]

{ #category : #accessing }
QNTBusinessSector >> companies: anObject [
	companies := anObject
]

{ #category : #initialization }
QNTBusinessSector >> initialize [
	super initialize.
	companies := OrderedCollection new
]
