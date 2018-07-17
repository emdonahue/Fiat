tests-yui
testYuiGive
	| w gotSwordW yuiWaitingW |
	world ai addGoal: #(inventory player1 sword1).
	w := world runAI.
	self assert: w actions equals: #(#(yui say get sword1)) asConsTree.
	self deny: (w world state includes: #(inventory player1 sword1) asConsTree).
	gotSwordW := w world admin: #player1 act: #(get sword1).
	yuiWaitingW := gotSwordW world runAI.
	self assert: yuiWaitingW world ai goal equals: Cons empty cons.
	self assert: (yuiWaitingW world state includes: #(inventory player1 sword1) asConsTree).