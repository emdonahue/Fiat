asking
testIsA
	world := world add: #(inventory player1 axe2).
	self assert: (yui ask: #(is player1 a player) asCons in: world) equals: #yes.
	self assert: (yui ask: #(is yui a player) asCons in: world) equals: #yes.
	self assert: (yui ask: #(is yui a item) asCons in: world) equals: 'I dont know'.
	self assert: (yui ask: #(is sword1 a item) asCons in: world) equals: #yes.
	self assert: (yui ask: #(is axe2 a item) asCons in: world) equals: #yes.
	self assert: (yui ask: #(is nothing a item) asCons in: world) equals: 'I dont know'.
	self assert: (yui ask: #(is room1 a room) asCons in: world) equals: #yes.