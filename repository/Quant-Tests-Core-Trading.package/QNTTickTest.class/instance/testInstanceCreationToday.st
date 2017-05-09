tests
testInstanceCreationToday
	| tick |
	tick := QNTTick forToday.
	self assert: tick beginTime equals: Date today