planning
testPlanGetMove
	| plan |
	yui goal: (((#inventory cons: #yui cons: #sword1 cons) cons: (#room cons: #room2 cons: #yui cons) cons) cons: Cons empty).
	plan := (yui plan: world).
	self assert: plan first car equals: (#yui cons: #get cons: #sword1 cons).
	self assert: plan second car equals: (#yui cons: #move cons: #room2 cons).