tests
testMove
	| s |
	s := (world act: #(player1 move room2) ) state.
	self deny: (s includes: #(room room1 player1) asConsTree).
	self assert: (s includes: #(room room2 player1) asConsTree)