parsing
testGoGoal
	self
		assert:
			[ :g | 
			yui
				say: (#go cons: #room2 cons)
				speaker: #yui 
				addressee: #player1
				goal: g
				in: world ] asGoal runList first car
		equals: #(#(#room #room2 #player1)) asConsTree cons