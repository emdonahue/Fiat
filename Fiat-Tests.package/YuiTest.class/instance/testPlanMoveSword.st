planning
testPlanMoveSword
	yui goal: ((#room cons: #room2 cons: #sword1 cons) cons cons: Cons empty).
	self assert: yui plan car car equals: (#yui cons: #get cons: #sword1 cons)