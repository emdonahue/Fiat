asking
testWhat
	world := world add: #(inventory player1 axe2).
	self assert: (yui ask: #(what player1) asCons in: world) equals: #player.
	self assert: (yui ask: #(what yui) asCons in: world) equals: #player.
	self assert: (yui ask: #(what sword1) asCons in: world) equals: #item.
	self assert: (yui ask: #(what axe2) asCons in: world) equals: #item.
	self assert: (yui ask: #(what nothing) asCons in: world) equals: 'I dont know'.
	self assert: (yui ask: #(what room1) asCons in: world) equals: #room.