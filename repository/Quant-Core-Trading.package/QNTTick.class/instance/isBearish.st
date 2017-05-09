testing
isBearish
	"Return true if this is a bullish tick"

	openPrice ifNil: [ ^ false ].
	closePrice ifNil: [ ^ false ].
	^ closePrice < openPrice