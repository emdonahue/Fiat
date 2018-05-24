tests-yui
testYuiTake
	| w s |
	s := (world act: #(player1 get sword1)) world.
	s ai addGoal: #(inventory yui sword1).
	w := s runYui.
	self assert: w actions equals: #(#(yui say drop sword1)) asConsTree.
	self assert: w world ai goal equals: Cons empty cons