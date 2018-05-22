planning
testPlanLeave
	self skip.
	yui goal: (Cons empty cons: (#room cons: #room1 cons: #yui cons) cons).
	self assert: (yui plan: world) first car equals: (#yui cons: #move cons: #room2 cons)