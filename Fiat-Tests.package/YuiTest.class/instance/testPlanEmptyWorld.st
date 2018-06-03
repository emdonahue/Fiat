planning-impossible
testPlanEmptyWorld
	yui goal: ((#inventory cons: #yui cons: #sword1 cons) cons cons: Cons empty).
	self assert: (yui plan: Aincrad new) isEmpty