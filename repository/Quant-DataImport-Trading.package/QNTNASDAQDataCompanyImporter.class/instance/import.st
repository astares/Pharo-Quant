importing
import
	| lines | 
	lines := (NeoCSVReader on: stream)
					skipHeader;
					separator: $,;
					addSymbolField;			"Symbol"
					addField;				 	"Name"
					addField;					"LastSale"
					addField;					"MarketCap"
					addField;					"IPOyear"
					addField;					"Sector"
					addField;					"industry"					
					addField;					"Summary quote"										
					upToEnd.
	lines do: [:each | self processRowArray: each ].
	