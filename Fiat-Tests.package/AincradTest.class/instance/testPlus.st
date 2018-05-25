tests-admin
testPlus
	| s |
	s := (world admin: #player1 act: #( + inventory player1 hammer1)) state.
	self assert: (s includes: #(inventory player1 hammer1) asConsTree)