parsing
parse: inputUtterance
	<type: #Cons returns: #Cons>
	^ [ :parse | [ :top | CCGParser new parse: (self lexiconLookup: inputUtterance) top: top o: parse ] ] asGoal runList first first.