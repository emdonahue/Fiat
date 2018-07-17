planning-impossible
testPlanImpossible
	yui goal: ((#inventory cons: #yui cons: #nonexistentobject cons) cons cons: Cons empty).
	self assert: (yui plan: (Aincrad new state: #(#(room room1 sword1) #(exit room1 room2) #(room room1 player1) #(room room1 yui)))) isEmpty.
	"#(#(room room1 player1) #(room room1 yui) #(room room1 sword1) #(exit room1 room2) #(exit room2 room1))"