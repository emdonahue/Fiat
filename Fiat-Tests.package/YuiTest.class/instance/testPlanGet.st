primitive actions
testPlanGet
	yui goal: ((#inventory cons: #yui cons: #sword1 cons) cons cons: Cons empty).
	self assert: (yui plan: world) first equals: (#yui cons: #get cons: #sword1 cons).