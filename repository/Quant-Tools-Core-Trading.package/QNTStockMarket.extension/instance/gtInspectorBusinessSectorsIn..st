*Quant-Tools-Core-Trading
gtInspectorBusinessSectorsIn: composite
	<gtInspectorPresentationOrder: 2> 
	<gtInspectorTag: #quant>

	composite table 
		title: 'Business Sectors';
		display: [ self businessSectors ];
		column: 'Name' evaluated: [:each | each name asString ]