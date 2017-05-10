accessing
markets
	"Lazy initialize the markets"
	
	^Markets ifNil: [ Markets := OrderedCollection new ].