planning
testPlanStay
	self skip.
	yui goal: (Cons empty cons: (#room cons: #room2 cons: #yui cons) cons).
	self assert: yui plan equals: Cons empty