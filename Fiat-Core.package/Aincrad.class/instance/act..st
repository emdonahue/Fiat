acting
act: anAction
	| action |
	action := anAction asConsTree.
	^ [ :nxt | self act: action from: state to: nxt ] asGoal runList
		ifEmpty: [ self update: 'What you expected, hasnt happened' ]
		ifNotEmpty: [ :suc | (self action: action state: suc first first) update: anAction ].