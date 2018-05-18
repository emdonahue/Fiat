tests
testDrop
	| s |
	s := ((world act: #(player1 get sword1) ) act: #(player1 drop sword1) ) state.
	self deny: (s includes: #(inventory player1 sword1) asConsTree).
	self assert: (s includes: #(room room1 sword1) asConsTree)