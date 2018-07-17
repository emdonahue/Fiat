speaking
testTellYui
	| s w |
	self skip.
	s := world admin: #player1 act: #(tell inventory yui sword1).
	self assert: s world ai goal equals: #(#(inventory yui sword1)) asConsTree cons.
	w := s world runAI.
	self assert: (w world state includes: #(inventory yui sword1) asConsTree).
	self assert: w world ai goal equals: Cons empty cons.