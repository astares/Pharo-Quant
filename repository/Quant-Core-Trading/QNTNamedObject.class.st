"
A named object
"
Class {
	#name : #QNTNamedObject,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : 'Quant-Core-Trading-Model'
}

{ #category : #'instance creation' }
QNTNamedObject class >> named: aString [ 
	^(self new)
		name: aString;
		yourself
]

{ #category : #accessing }
QNTNamedObject >> name [
	^ name
]

{ #category : #accessing }
QNTNamedObject >> name: anObject [
	name := anObject
]
