instance creation
openOn: anActionManager
	<script: 'self open'>

	|inspector|
	inspector := GTInspector new.
	inspector title: 'StockMarket Browser'.
	inspector presentationFilter: (GTInspectorTagFilter new 
												defaultTag: #quant;
												addAndSelectTag: #quant).
	inspector openOn: anActionManager 