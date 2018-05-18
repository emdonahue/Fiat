tests
testMoveItem
	| s |
	s := (((world act: #(player1 get sword1) ) act: #(player1 move room2) ) act: #(player1 drop sword1))  state.
	self assert: (s includes: #(room room2 player1) asConsTree).
	self assert: (s includes: #(room room2 sword1) asConsTree).
	
	self deny: (s includes: #(room room1 player1) asConsTree).
	self deny: (s includes: #(room room1 sword1) asConsTree).
	self deny: (s includes: #(inventory player1 sword1) asConsTree).
	