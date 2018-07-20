asking
testIsIn
	self assert: (yui ask: #(is player1 in room1) asCons in: world) equals: #yes.
	self assert: (yui ask: #(is yui in room1) asCons in: world) equals: #yes.
	self assert: (yui ask: #(is sword1 in room1) asCons in: world) equals: #yes.
	self assert: (yui ask: #(is player1 in room2) asCons in: world) equals: #no.
	self assert: (yui ask: #(is player1 in noroom) asCons in: world) equals: #no.
	self assert: (yui ask: #(is nothing in room1) asCons in: world) equals: #no.