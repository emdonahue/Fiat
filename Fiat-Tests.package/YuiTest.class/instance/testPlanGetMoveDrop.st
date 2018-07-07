primitive actions
testPlanGetMoveDrop
	| plan |
	yui goal: ((#room cons: #room2 cons: #sword1 cons) cons cons: Cons empty).
	plan := yui plan: world.
	self assert: plan first equals: (#get cons: #sword1 cons).
	self assert: plan second equals: (#move cons: #room2 cons).
	self assert: plan third equals: ( #drop cons: #sword1 cons).