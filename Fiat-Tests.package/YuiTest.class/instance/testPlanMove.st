planning
testPlanMove
	yui goal: ((#room cons: #room2 cons: #yui cons) cons cons: Cons empty).
	self assert: yui plan car car equals: (#yui cons: #move cons: #room2 cons)