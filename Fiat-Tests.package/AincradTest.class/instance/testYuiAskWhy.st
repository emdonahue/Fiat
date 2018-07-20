tests-yui
testYuiAskWhy
	| s |
	s := (world act: #(player1 get sword1)) world.
	self assert: (s ai ask: #(why inventory player1 sword1) asCons in: s) equals: #(player1 get sword1) asCons.