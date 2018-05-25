tests-admin
testLook
	| s |
	s := world admin:#player1 act: #(look).
	self assert: s message equals: s world state