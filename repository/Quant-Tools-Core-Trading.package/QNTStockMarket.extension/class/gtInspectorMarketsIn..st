*Quant-Tools-Core-Trading
gtInspectorMarketsIn: composite
	<script: 'self inspect'>
	<gtInspectorPresentationOrder: 1> 
	<gtInspectorTag: #quant>

	composite table 
		title: 'Stock markets';
		display: [ self markets ];
		column: 'Name' evaluated: [:each | each name asString ]