speaking
testPlanGive
	yui goal: ((#inventory cons: #player1 cons: #sword1 cons) cons cons: Cons empty).
	self assert: (yui plan: world) car car equals: (#yui cons: #say cons: #get cons: #sword1 cons)