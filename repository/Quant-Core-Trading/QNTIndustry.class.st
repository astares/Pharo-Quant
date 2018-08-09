"
An industry
"
Class {
	#name : #QNTIndustry,
	#superclass : #QNTNamedObject,
	#instVars : [
		'companies'
	],
	#category : 'Quant-Core-Trading-Model'
}

{ #category : #accessing }
QNTIndustry >> companies [
	^ companies
]

{ #category : #accessing }
QNTIndustry >> companies: anObject [
	companies := anObject
]

{ #category : #initialization }
QNTIndustry >> initialize [
	super initialize.
	companies := OrderedCollection new
]
