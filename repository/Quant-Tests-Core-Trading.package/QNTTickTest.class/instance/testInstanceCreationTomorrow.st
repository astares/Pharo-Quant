tests
testInstanceCreationTomorrow
	| tick |
	tick := QNTTick forDate: Date yesterday.
	self
		assert: tick beginTime equals: Date yesterday;
		assert: tick endTime equals: Date today