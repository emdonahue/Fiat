planning-impossible
testPlanYuiAndWrongObject
	self skip.
	yui goal: ((#inventory cons: #yui cons: #sword1 cons) cons cons: Cons empty).
	"self assert: (yui plan: (Aincrad new state: #(#(room room1 yui) #(exit room1 room2) #(room room1 hammer2)))) isEmpty"
	(yui makePlan: (Aincrad new state: #(#(room room1 yui) #(exit room1 room2) #(room room1 hammer2)))) runner inspect