initialization
markets

	^QNTStockMarket markets ifEmpty: [ self downloadMarketData ]