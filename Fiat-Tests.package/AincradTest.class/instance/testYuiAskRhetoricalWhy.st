tests-yui
testYuiAskRhetoricalWhy
	self assert: (world ai ask: #(why room room1 sword1) asCons in: world) equals: 'I dont know'.