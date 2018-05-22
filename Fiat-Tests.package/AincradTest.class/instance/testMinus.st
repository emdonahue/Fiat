tests-admin
testMinus
	| s |
	self assert: (world state includes: #(room room1 sword1) asConsTree).
	s := (world act: #(player1 - room room1 sword1)) state.
	self deny: (s includes: #(room room1 sword1) asConsTree)