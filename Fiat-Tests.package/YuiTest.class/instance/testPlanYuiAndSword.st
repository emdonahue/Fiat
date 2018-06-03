planning-impossible
testPlanYuiAndSword
	self skip.
	yui goal: ((#room cons: #room2 cons: #yui cons) cons cons: Cons empty).
	self assert: (yui plan: (Aincrad new state: #(#(room room1 yui) #(room room1 sword1)))) isEmpty