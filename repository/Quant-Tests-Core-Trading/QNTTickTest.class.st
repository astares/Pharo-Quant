"
Test for QNTTick
"
Class {
	#name : #QNTTickTest,
	#superclass : #TestCase,
	#category : 'Quant-Tests-Core-Trading-Model'
}

{ #category : #'test-data' }
QNTTickTest >> blackFriday [
	"Return the day the Vienna Stock Exchange crashed"
	^Date readFrom: '1873-05-09' pattern: 'yyyy-mm-dd'
]

{ #category : #tests }
QNTTickTest >> testInstanceCreationByDay [
	| tick |
	tick := QNTTick forDate: self blackFriday.
	self
		assert: tick beginTime equals: self blackFriday;
		assert: tick endTime equals: self blackFriday + 1 day
]

{ #category : #tests }
QNTTickTest >> testInstanceCreationToday [
	| tick |
	tick := QNTTick forToday.
	self assert: tick beginTime equals: Date today
]

{ #category : #tests }
QNTTickTest >> testInstanceCreationTomorrow [
	| tick |
	tick := QNTTick forDate: Date yesterday.
	self
		assert: tick beginTime equals: Date yesterday;
		assert: tick endTime equals: Date today
]
