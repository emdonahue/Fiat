asking
testWhere
	self assert: (yui ask: #(where player1) asCons in: world) equals: #room1.
	self assert: (yui ask: #(where yui) asCons in: world) equals: #room1.
	self assert: (yui ask: #(where sword1) asCons in: world) equals: #room1.
	self assert: (yui ask: #(where nothing) asCons in: world) equals: 'I dont know'.
	self assert: (yui ask: #(where room1) asCons in: world) equals: #room2.