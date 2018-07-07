primitive actions
testPlanGetMove
	| plan |
	yui goal: (((#room cons: #room2 cons: #yui cons) cons: (#inventory cons: #yui cons: #sword1 cons) cons) cons: Cons empty).
	plan := yui plan: world.
	self assert: plan first equals: (#get cons: #sword1 cons).
	self assert: plan second equals: (#move cons: #room2 cons).