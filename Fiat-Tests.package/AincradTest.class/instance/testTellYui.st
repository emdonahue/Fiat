tests-yui
testTellYui
	| s w |
	s := world act: #(player1 tell inventory yui sword1).
	self assert: s world ai goal equals: #(#(inventory yui sword1)) asConsTree cons.
	w := s world runYui.
	self assert: (w world state includes: #(inventory yui sword1) asConsTree).
	self assert: w world ai goal equals: (Cons empty cons)