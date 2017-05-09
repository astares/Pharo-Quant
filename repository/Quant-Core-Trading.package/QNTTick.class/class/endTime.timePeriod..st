instance creation
endTime: endTime timePeriod: timePeriod
	"Return a new instance of the receiver with the given
	 end time and time period. The begin time is calculated"
	^ self new
		timePeriod: timePeriod;
		beginTime: endTime - timePeriod;
		endTime: endTime;
		yourself