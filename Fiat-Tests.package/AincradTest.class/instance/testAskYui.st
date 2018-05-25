tests-yui
testAskYui
	| s |
	s := world admin: #player1 act: #(ask where sword1).
	self assert: s actions equals: #room1 cons.
	self assert: (world admin: #player1 act: #(ask where sword2)) actions equals: 'I dont know'