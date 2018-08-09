Extension { #name : #QNTStockMarket }

{ #category : #'*Quant-Tools-Core-Trading' }
QNTStockMarket >> gtInspectorBusinessSectorsIn: composite [
	<gtInspectorPresentationOrder: 2> 
	<gtInspectorTag: #quant>

	composite table 
		title: 'Business Sectors';
		display: [ self businessSectors ];
		column: 'Name' evaluated: [:each | each name asString ]
]

{ #category : #'*Quant-Tools-Core-Trading' }
QNTStockMarket >> gtInspectorCompaniesIn: composite [
	<gtInspectorPresentationOrder: 1> 
	<gtInspectorTag: #quant>
	
	composite table 
		title: 'Companies';
		display: [ self companies ];
		column: 'Symbol' evaluated: [:each | each symbol asString ];
		column: 'Name' evaluated: [:each | each name asString ]
]

{ #category : #'*Quant-Tools-Core-Trading' }
QNTStockMarket >> gtInspectorIndustriesSectorsIn: composite [
	<gtInspectorPresentationOrder: 2> 
	<gtInspectorTag: #quant>
		
	composite table 
		title: 'Industries';
		display: [ self industries ];
		column: 'Name' evaluated: [:each | each name asString ]
]

{ #category : #'*Quant-Tools-Core-Trading' }
QNTStockMarket class >> gtInspectorMarketsIn: composite [
	<script: 'self inspect'>
	<gtInspectorPresentationOrder: 1> 
	<gtInspectorTag: #quant>

	composite table 
		title: 'Stock markets';
		display: [ self markets ];
		column: 'Name' evaluated: [:each | each name asString ]
]
