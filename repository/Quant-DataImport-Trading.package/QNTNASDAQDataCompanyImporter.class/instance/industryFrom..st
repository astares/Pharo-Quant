private - utilities
industryFrom: aString 
	^industries at: aString ifAbsentPut: [ 
		market industries add: (QNTIndustry named: aString) ] 