initialization
initialize
	"Initializes the receiver"

	super initialize.
	ticks := OrderedCollection new.
	name := 'Unnamed Time series'