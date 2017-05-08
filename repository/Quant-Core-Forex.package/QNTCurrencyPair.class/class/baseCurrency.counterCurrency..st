instance creation
baseCurrency: baseCurrency counterCurrency: counterCurrency 

	^(self new)
		baseCurrency: baseCurrency asCurrency;
		counterCurrency: counterCurrency asCurrency;
		yourself 