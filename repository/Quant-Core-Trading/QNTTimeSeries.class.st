"
A time series is a named sequence of ticks separated by a predefined period  (e.g. 15 minutes, 1 day, etc.)
"
Class {
	#name : #QNTTimeSeries,
	#superclass : #Object,
	#instVars : [
		'name',
		'ticks'
	],
	#category : 'Quant-Core-Trading-Model'
}

{ #category : #initialization }
QNTTimeSeries >> initialize [
	"Initializes the receiver"

	super initialize.
	ticks := OrderedCollection new.
	name := 'Unnamed Time series'
]

{ #category : #accessing }
QNTTimeSeries >> name [
	^ name
]

{ #category : #accessing }
QNTTimeSeries >> name: anObject [
	name := anObject
]

{ #category : #accessing }
QNTTimeSeries >> ticks [
	^ ticks
]

{ #category : #accessing }
QNTTimeSeries >> ticks: anObject [
	ticks := anObject
]
