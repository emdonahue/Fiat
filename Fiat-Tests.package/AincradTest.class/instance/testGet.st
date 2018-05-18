tests
testGet
	| s |
	s := (world act: #(player1 get sword1) ) state.
	self assert: (s includes: #(inventory player1 sword1) asConsTree).
	self deny: (s includes: #(room room1 sword1) asConsTree)