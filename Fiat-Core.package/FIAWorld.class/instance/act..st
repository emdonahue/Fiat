accessing structure variables
act: anAction
	^ [ :nxt | self step: anAction from: state to: nxt ] asGoal run
		ifEmpty: [ FIAWorldDelta new
				world: self;
				actions: 'What you expected, hasnt happened' ]
		ifNotEmpty: [ :suc | 
			FIAWorldDelta new
				world: (self copy state: suc first first);
				actions: anAction ]