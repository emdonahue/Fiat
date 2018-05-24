tests-yui
testYuiTake
	| w s swordDroppedW yuiHasSwordW |
	s := (world adminAct: #(player1 get sword1)) world.
	s ai addGoal: #(inventory yui sword1).
	w := s runYui.
	self assert: w actions equals: #(#(yui say drop sword1)) asConsTree.
	swordDroppedW := (w world adminAct: #(player1 drop sword1)) .
	yuiHasSwordW := swordDroppedW world runYui.
	self assert: yuiHasSwordW world ai goal equals: Cons empty cons