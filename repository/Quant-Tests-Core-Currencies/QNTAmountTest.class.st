Class {
	#name : #QNTAmountTest,
	#superclass : #TestCase,
	#category : 'Quant-Tests-Core-Currencies-Model'
}

{ #category : #'tests - accessing' }
QNTAmountTest >> testAccessingCurrency [

	self assert: 6 EUR currency code equals: #'EUR'
]

{ #category : #'tests - arithmetic' }
QNTAmountTest >> testAddition [

	self assert: 10 EUR + 20 EUR equals: 30 EUR 
]

{ #category : #'tests - arithmetic compatible' }
QNTAmountTest >> testAdditionStartingWithAmount [

	self assert: 6 EUR + 2 equals: 8 EUR
]

{ #category : #'tests - arithmetic compatible' }
QNTAmountTest >> testAdditionStartingWithNumber [

	self assert: 2 + 6 EUR equals: 8 EUR
]

{ #category : #'tests - intervals' }
QNTAmountTest >> testInterval [

	self assert: (1 EUR to: 8 EUR) size equals: 8
]

{ #category : #'tests - intervals' }
QNTAmountTest >> testIntervalByCurrency [

	self assert: (1 EUR to: 8 EUR by: 2 EUR) size equals: 4 
]

{ #category : #'tests - arithmetic' }
QNTAmountTest >> testKeep [

	self assert: 1 EUR / 3 EUR * 3 EUR equals: 1 EUR
]

{ #category : #'tests - arithmetic' }
QNTAmountTest >> testMultiply [

	self assert: 30 EUR * 2 equals: 60 EUR 
]

{ #category : #'tests - arithmetic compatible' }
QNTAmountTest >> testMultiplyStartingWithAmount [

	self assert: 6 EUR * 2 equals: 12 EUR
]

{ #category : #'tests - arithmetic compatible' }
QNTAmountTest >> testMultiplyStartingWithNumber [

	self assert: 2 * 6 EUR equals: 12 EUR
]

{ #category : #'tests - arithmetic' }
QNTAmountTest >> testMultiplyWithAmount [
	self assert: 30 EUR * 2 EUR equals: 60 EUR
]

{ #category : #tests }
QNTAmountTest >> testPrinting [

	self 
		assert: 10 EUR printString equals: '10.00 EUR';
		assert: 10.5 EUR printString equals: '10.50 EUR' 
]

{ #category : #'tests - arithmetic' }
QNTAmountTest >> testSubtraction [

	self assert: 30 EUR - 20 EUR equals: 10 EUR 
]
