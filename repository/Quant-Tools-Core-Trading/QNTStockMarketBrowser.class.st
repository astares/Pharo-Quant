"
Custom GT browser for markets
"
Class {
	#name : #QNTStockMarketBrowser,
	#superclass : #Object,
	#instVars : [
		'markets'
	],
	#category : 'Quant-Tools-Core-Trading-UI'
}

{ #category : #'instance creation' }
QNTStockMarketBrowser class >> open [
	<script>
	self openOn: self new
]

{ #category : #'instance creation' }
QNTStockMarketBrowser class >> openOn: anActionManager [
	<script: 'self open'>

	|inspector|
	inspector := GTInspector new.
	inspector title: 'StockMarket Browser'.
	inspector presentationFilter: (GTInspectorTagFilter new 
												defaultTag: #quant;
												addAndSelectTag: #quant).
	inspector openOn: anActionManager 
]

{ #category : #initialization }
QNTStockMarketBrowser >> downloadMarketData [

	QNTStockMarket markets 
		add: (QNTNASDAQDataCompanyImporter exampleAMEX) market;
		add: (QNTNASDAQDataCompanyImporter exampleNASDAQ) market;
		add: (QNTNASDAQDataCompanyImporter exampleNYSE) market.
	self inform: 'Market data downloaded'	
]

{ #category : #'custom inspection' }
QNTStockMarketBrowser >> gtInspectorCompaniesIn: composite [
	<gtInspectorPresentationOrder: 1> 
	<gtInspectorTag: #quant>
		
	composite table 
		title: 'Markets';
		display: [ self markets ];
		column: 'Name' evaluated: [:each | each name asString ]
]

{ #category : #initialization }
QNTStockMarketBrowser >> markets [

	^QNTStockMarket markets ifEmpty: [ self downloadMarketData ]
]
