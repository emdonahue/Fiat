planning
testPlanGetMove
	| plan |
	yui goal: (((#room cons: #room2 cons: #yui cons) cons: (#inventory cons: #yui cons: #sword1 cons) cons) cons: Cons empty).
	plan := yui subplan: world.
	self assert: plan first car equals: (#yui cons: #get cons: #sword1 cons).
	self assert: plan second car equals: (#yui cons: #move cons: #room2 cons)