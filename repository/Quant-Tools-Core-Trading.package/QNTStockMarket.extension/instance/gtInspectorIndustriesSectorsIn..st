*Quant-Tools-Core-Trading
gtInspectorIndustriesSectorsIn: composite
	<gtInspectorPresentationOrder: 2> 
	<gtInspectorTag: #quant>
		
	composite table 
		title: 'Industries';
		display: [ self industries ];
		column: 'Name' evaluated: [:each | each name asString ]