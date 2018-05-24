tests-yui
testYuiGive
	| w |
	world ai addGoal: #(inventory player1 sword1).
	w := world runYui.
	self assert: w actions equals: #((yui say get sword1)) asConsTree.
	self assert: w world ai goal equals: Cons empty cons