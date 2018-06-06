speaking
testComeGoal
	self
		assert:
			[ :g | 
			yui
				say: #come cons
				speaker: #yui
				addressee: #player1
				goal: g
				in: world ] asGoal run first car
		equals: (#room cons: #room1 cons: #player1 cons) cons cons