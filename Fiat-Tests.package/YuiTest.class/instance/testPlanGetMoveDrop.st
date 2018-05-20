planning
testPlanGetMoveDrop
	yui goal: ((#room cons: #room2 cons: #sword1 cons) cons cons: Cons empty).
	self assert: yui plan first car equals: (#yui cons: #get cons: #sword1 cons).
	self assert: yui plan second car equals: (#yui cons: #move cons: #room2 cons).
	self assert: yui plan third car equals: (#yui cons: #drop cons: #sword1 cons)