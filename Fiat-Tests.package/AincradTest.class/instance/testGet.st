tests
testGet
	| s |
	s := (world act: #(player1 get sword1)) world.
	self assert: (s state includes: #(inventory player1 sword1) asConsTree).
	self deny: (s state includes: #(room room1 sword1) asConsTree).
	self assert: s ai history first car equals: #(player1 get sword1) asCons.
	self assert: s ai history first cdr equals: s state.