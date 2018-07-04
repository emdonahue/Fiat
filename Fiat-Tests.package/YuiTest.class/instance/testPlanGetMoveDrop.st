primitive actions
testPlanGetMoveDrop
	| plan |
	yui goal: ((#room cons: #room2 cons: #sword1 cons) cons cons: Cons empty).
	plan := yui plan: world.
	self assert: plan first equals: (#yui cons: #get cons: #sword1 cons).
	self assert: plan second equals: (#yui cons: #move cons: #room2 cons).
	self assert: plan third equals: (#yui cons: #drop cons: #sword1 cons).