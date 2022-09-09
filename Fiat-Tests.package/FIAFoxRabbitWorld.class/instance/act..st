accessing structure variables
act: anAction
	^ [ :nxt | self step: anAction from: state to: nxt ] asGoal runList
		ifEmpty: [ FIAUpdate new
				world: self;
				actions: 'What you expected, hasnt happened' ]
		ifNotEmpty: [ :suc | 
			FIAUpdate new
				world: (self copy state: suc first first);
				actions: anAction ]