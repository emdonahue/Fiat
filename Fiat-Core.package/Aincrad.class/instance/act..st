acting
act: anAction

	^ [ :nxt | self act: anAction from: state to: nxt ] asGoal run
		ifEmpty: [ self update: 'What you expected, hasnt happened' ]
		ifNotEmpty: [ :suc | (self copy state: suc first first) update: anAction ]