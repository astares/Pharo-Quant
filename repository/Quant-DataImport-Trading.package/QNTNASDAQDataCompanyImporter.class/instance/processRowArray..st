private - processing
processRowArray: anArray
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