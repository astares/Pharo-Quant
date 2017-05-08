private accessing
knownCurrencies
	"Return the already known currencies"
	
	^KnownCurrencies ifNil: [ KnownCurrencies := IdentityDictionary new ].
   