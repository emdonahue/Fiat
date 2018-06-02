planning
testPlanImpossible
	self skip.
	yui goal: ((#inventory cons: #yui cons: #nonexistentobject cons) cons cons: Cons empty).
	self assert: (yui plan: world) isEmpty