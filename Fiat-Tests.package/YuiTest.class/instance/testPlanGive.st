speaking
testPlanGive
	yui goal: ((#inventory cons: #player1 cons: #sword1 cons) cons cons: Cons empty).
	self assert: (yui plan: world) first equals: ( #say cons: #get cons: #sword1 cons).