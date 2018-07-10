parsing
testGetGoal
	| goal |
	goal := [ :g | yui say: (#get cons: #sword1 cons) speaker: #player1 addressee: #yui goal: g in: world ] asGoal run first car.
	self assert: goal equals: #(#(#inventory yui sword1)) asConsTree cons.
	yui goal: goal.
	self assert: (yui plan: world) first equals: (#get cons: #sword1 cons).