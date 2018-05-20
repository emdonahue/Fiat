planning
testPlanGetMove
	yui goal: (((#inventory cons: #yui cons: #sword1 cons) cons: (#room cons: #room2 cons: #yui cons) cons) cons: Cons empty).
	self assert: yui plan first car equals: (#yui cons: #get cons: #sword1 cons).
	self assert: yui plan second car equals: (#yui cons: #move cons: #room2 cons).