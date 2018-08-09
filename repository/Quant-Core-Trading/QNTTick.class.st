"
A tick
  timePeriod   - the time period (e.g. 1 day, 15 minutes, ...) of the tick
   beginTime   - the begin time
   endTime      - the end time
   openPrice    - the opening price
   highPrice     - the highest price
   lowPrice       - the lowest price
   closePrice   - the closing price
   volume         - the volume of the period
"
Class {
	#name : #QNTTick,
	#superclass : #Object,
	#instVars : [
		'timePeriod',
		'beginTime',
		'endTime',
		'openPrice',
		'highPrice',
		'lowPrice',
		'closePrice',
		'volume'
	],
	#category : 'Quant-Core-Trading-Model'
}

{ #category : #'instance creation' }
QNTTick class >> endTime: endTime timePeriod: timePeriod [
	"Return a new instance of the receiver with the given
	 end time and time period. The begin time is calculated"
	^ self new
		timePeriod: timePeriod;
		beginTime: endTime - timePeriod;
		endTime: endTime;
		yourself
]

{ #category : #'instance creation - daily' }
QNTTick class >> forDate: aDate [
	^ self endTime: aDate + 1 day timePeriod: 1 day
]

{ #category : #'instance creation - daily' }
QNTTick class >> forToday [
	^ self forDate: Date today
]

{ #category : #accessing }
QNTTick >> beginTime [
	^ beginTime
]

{ #category : #accessing }
QNTTick >> beginTime: anObject [
	beginTime := anObject
]

{ #category : #accessing }
QNTTick >> closePrice [
	^ closePrice
]

{ #category : #accessing }
QNTTick >> closePrice: anObject [
	closePrice := anObject
]

{ #category : #accessing }
QNTTick >> endTime [
	^ endTime
]

{ #category : #accessing }
QNTTick >> endTime: anObject [
	endTime := anObject
]

{ #category : #accessing }
QNTTick >> highPrice [
	^ highPrice
]

{ #category : #accessing }
QNTTick >> highPrice: anObject [
	highPrice := anObject
]

{ #category : #testing }
QNTTick >> isBearish [
	"Return true if this is a bullish tick"

	openPrice ifNil: [ ^ false ].
	closePrice ifNil: [ ^ false ].
	^ closePrice < openPrice
]

{ #category : #testing }
QNTTick >> isBullish [
	"Return true if this is a bullish tick"

	openPrice ifNil: [ ^ false ].
	closePrice ifNil: [ ^ false ].
	^ openPrice < closePrice
]

{ #category : #accessing }
QNTTick >> lowPrice [
	^ lowPrice
]

{ #category : #accessing }
QNTTick >> lowPrice: anObject [
	lowPrice := anObject
]

{ #category : #accessing }
QNTTick >> openPrice [
	^ openPrice
]

{ #category : #accessing }
QNTTick >> openPrice: anObject [
	openPrice := anObject
]

{ #category : #accessing }
QNTTick >> timePeriod [
	^ timePeriod
]

{ #category : #accessing }
QNTTick >> timePeriod: anObject [
	timePeriod := anObject
]

{ #category : #accessing }
QNTTick >> volume [
	^ volume
]

{ #category : #accessing }
QNTTick >> volume: anObject [
	volume := anObject
]
