tests-yui
testAskYui
	| s |
	s := world act: #(player1 ask where sword1).
	self assert: s actions equals: #room1 cons.
	
	self assert: (world act: #(player1 ask where sword2)) actions equals: 'I dont know'