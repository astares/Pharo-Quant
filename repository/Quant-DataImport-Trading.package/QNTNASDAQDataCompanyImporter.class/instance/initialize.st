initialization
initialize

	super initialize.
	market := QNTStockMarket named: 'Unnamed'.
	businessSectors := Dictionary new.
	industries := Dictionary new.