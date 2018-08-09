"
A data importer from NASDAQ CSV
"
Class {
	#name : #QNTNASDAQDataCompanyImporter,
	#superclass : #Object,
	#instVars : [
		'stream',
		'market',
		'businessSectors',
		'industries'
	],
	#category : 'Quant-DataImport-Trading-NASDAQ-Import'
}

{ #category : #'private - utilities' }
QNTNASDAQDataCompanyImporter class >> dummyData [

	^'"Symbol","Name","LastSale","MarketCap","IPOyear","Sector","industry","Summary Quote",
"ABC","Super Software","7.176","$42.00M","2017","Public","Software industry","http://www.nasdaq.com/symbol/abc",
"DEF","Super Bank","1.63","$42.00M","n/a","Finance","Financial industry","http://www.nasdaq.com/symbol/def",'
]

{ #category : #examples }
QNTNASDAQDataCompanyImporter class >> exampleAMEX [
	<script: 'self exampleAMEX inspect'>
	
	^(self importURL: 'http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=amex&render=download' marketName: 'AMEX') 
]

{ #category : #examples }
QNTNASDAQDataCompanyImporter class >> exampleDummy [

	^(self on: self dummyData readStream marketName: 'DUMMY')
		import;
		yourself
]

{ #category : #examples }
QNTNASDAQDataCompanyImporter class >> exampleNASDAQ [
	<script: 'self exampleNASDAQ inspect'>
	^self importURL: 'http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=nasdaq&render=download' marketName: 'NASDAQ'
]

{ #category : #examples }
QNTNASDAQDataCompanyImporter class >> exampleNYSE [
	<script: 'self exampleNYSE inspect'>
	^self importURL: 'http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=nyse&render=download' marketName: 'NYSE'
]

{ #category : #'private - importing' }
QNTNASDAQDataCompanyImporter class >> importURL: anURL marketName: aString [

	| stream |
	stream := (self streamFromURL: anURL). 
	^(self on: stream marketName: aString)
		import;
		yourself
]

{ #category : #'instance creation' }
QNTNASDAQDataCompanyImporter class >> on: aStream marketName: aString [

	^(self new)
		initStream: aStream;
		marketName: aString;
		yourself
]

{ #category : #'private - utilities' }
QNTNASDAQDataCompanyImporter class >> streamFromURL: anURL [

	^(ZnEasy get: anURL)
		contents asString readStream 
]

{ #category : #'private - utilities' }
QNTNASDAQDataCompanyImporter >> businessSectorFrom: aString [ 
	^businessSectors at: aString ifAbsentPut: [ 
		market businessSectors add: (QNTBusinessSector named: aString) ] 
]

{ #category : #importing }
QNTNASDAQDataCompanyImporter >> import [
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
	
]

{ #category : #'private - utilities' }
QNTNASDAQDataCompanyImporter >> industryFrom: aString [ 
	^industries at: aString ifAbsentPut: [ 
		market industries add: (QNTIndustry named: aString) ] 
]

{ #category : #'private - initialization' }
QNTNASDAQDataCompanyImporter >> initStream: aReadStream [ 
	stream := aReadStream 
]

{ #category : #initialization }
QNTNASDAQDataCompanyImporter >> initialize [

	super initialize.
	market := QNTStockMarket named: 'Unnamed'.
	businessSectors := Dictionary new.
	industries := Dictionary new.
]

{ #category : #accessing }
QNTNASDAQDataCompanyImporter >> market [

	^market
]

{ #category : #'private - accessing' }
QNTNASDAQDataCompanyImporter >> marketName: aString [
	"Sets the name of the market"
	
	market name: aString
]

{ #category : #'private - processing' }
QNTNASDAQDataCompanyImporter >> processRowArray: anArray [
	<script: 'self exampleDummy inspect'>
	
	|company businessSector industry|
	company := QNTCompany symbol: anArray first named: anArray second.
	(anArray third = 'n/a') ifFalse: [ company lastSale: (ScaledDecimal readFrom: anArray third)].
	company marketCap: anArray fourth.
	company yearOfIPO: anArray fifth.
	industry := self industryFrom: anArray sixth.
	businessSector := self businessSectorFrom: anArray seventh.
	businessSector companies add: company.
	industry companies add: company.
	
	company industry: industry.
	company businessSector: businessSector.
	company summaryQuote: anArray eighth.
	market companies add: company
]
