parsing
testBringGoal
	self
		assert:
			[ :g | 
			yui
				say: (#bring cons: #sword1 cons)
				speaker: #yui
				addressee: #player1
				goal: g
				in: world ] asGoal runList first car
		equals: #(#(#room #room1 #player1) #(inventory player1 sword1)) asConsTree cons