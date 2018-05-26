planning
testPlanGetMoveDrop
	| plan |
	"self skip."
	yui goal: ((#room cons: #room2 cons: #sword1 cons) cons cons: Cons empty).
	plan := yui plan: world.
	self assert: plan first car equals: (#yui cons: #get cons: #sword1 cons).
	self assert: plan second car equals: (#yui cons: #move cons: #room2 cons).
	self assert: plan third car equals: (#yui cons: #drop cons: #sword1 cons)