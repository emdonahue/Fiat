primitive actions
testPlanMove
	yui goal: ((#room cons: #room2 cons: #yui cons) cons cons: Cons empty).
	self assert: (yui plan: world) first equals: (#move cons: #room2 cons).