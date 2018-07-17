tests-yui
testWipeGoalYui
	| s w |
	s := world admin: #player1 act: #(esp inventory yui sword1).
	self assert: s world ai goal equals: #(#(inventory yui sword1)) asConsTree cons.
	s := s world admin: #player1 act: #(wipe).
	self assert: s world ai goal equals: Cons empty cons.
	w := s world runAI.
	self deny: (w world state includes: #(inventory yui sword1) asConsTree).
	self assert: w world ai goal equals: Cons empty cons.