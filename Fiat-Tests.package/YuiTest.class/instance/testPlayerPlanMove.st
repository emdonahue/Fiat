player
testPlayerPlanMove
	| s |
	s := [ :plan :end | yui primitivePlan: plan actor: #player1 state: world state end: end goal: #(room room2 player1) asConsTree cons rules: world ]
		asGoal run.
	self assert: s first first equals: (#move cons: #room2 cons) cons.
	self assert: (s first second includes: (#room cons: #room2 cons: #player1 cons)).
	self assert: s size equals: 1.