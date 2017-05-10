private - utilities
streamFromURL: anURL

	^(ZnEasy get: anURL)
		contents asString readStream 