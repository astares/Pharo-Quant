tests
testInstanceCreationByDay
	| tick |
	tick := QNTTick forDate: self blackFriday.
	self
		assert: tick beginTime equals: self blackFriday;
		assert: tick endTime equals: self blackFriday + 1 day