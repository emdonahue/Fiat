planning-impossible
testPlanJustYui
	yui goal: ((#inventory cons: #yui cons: #sword1 cons) cons cons: Cons empty).
	self assert: (yui plan: (Aincrad new state: #(#(room room1 yui)))) isEmpty.