*Quant-Core-Currencies-Currencies
asAmountInCurrency: currencyCode

	^QNTAmount value: (self asScaledDecimal: 2) currencyCode: currencyCode