planning
testPlanGet
	yui goal: ((#inventory cons: #yui cons: #sword1 cons) cons cons: Cons empty).
	self assert: yui plan car car equals: (#yui cons: #get cons: #sword1 cons)