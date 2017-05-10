*Quant-Tools-Core-Trading
gtInspectorCompaniesIn: composite
	<gtInspectorPresentationOrder: 1> 
	<gtInspectorTag: #quant>
	
	composite table 
		title: 'Companies';
		display: [ self companies ];
		column: 'Symbol' evaluated: [:each | each symbol asString ];
		column: 'Name' evaluated: [:each | each name asString ]