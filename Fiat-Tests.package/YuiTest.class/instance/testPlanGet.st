planning
testPlanGet
	yui goal: ((#inventory cons: #yui cons: #sword1 cons) cons cons: Cons empty).
	self assert: (yui subplan: world) car car equals: (#yui cons: #get cons: #sword1 cons)