Extension { #name : #String }

{ #category : #'*Quant-Core-Currencies-Currencies' }
String >> asCurrency [
	"Return the currency represented by the receiver as currency code"
	
	^QNTCurrency code: self
]
