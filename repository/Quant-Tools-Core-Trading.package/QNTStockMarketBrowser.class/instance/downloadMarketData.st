initialization
downloadMarketData

	QNTStockMarket markets 
		add: (QNTNASDAQDataCompanyImporter exampleAMEX) market;
		add: (QNTNASDAQDataCompanyImporter exampleNASDAQ) market;
		add: (QNTNASDAQDataCompanyImporter exampleNYSE) market.
	self inform: 'Market data downloaded'	