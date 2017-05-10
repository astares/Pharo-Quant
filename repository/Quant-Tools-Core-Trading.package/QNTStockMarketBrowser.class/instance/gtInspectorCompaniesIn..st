custom inspection
gtInspectorCompaniesIn: composite
	<gtInspectorPresentationOrder: 1> 
	<gtInspectorTag: #quant>
		
	composite table 
		title: 'Markets';
		display: [ self markets ];
		column: 'Name' evaluated: [:each | each name asString ]