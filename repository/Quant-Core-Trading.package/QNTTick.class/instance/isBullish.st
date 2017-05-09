testing
isBullish
	"Return true if this is a bullish tick"

	openPrice ifNil: [ ^ false ].
	closePrice ifNil: [ ^ false ].
	^ openPrice < closePrice