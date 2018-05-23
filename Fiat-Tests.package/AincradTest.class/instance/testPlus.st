tests-admin
testPlus
	| s |
	s := (world adminAct: #(player1 + inventory player1 hammer1)) state.
	self assert: (s includes: #(inventory player1 hammer1) asConsTree)