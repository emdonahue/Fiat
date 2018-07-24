questions
testWhat
	world := world add: #(inventory player1 axe2).
	self assert: ((yui processUtterance: #(what sword1) asCons in: world) plan: world) equals: #(#(say sword1 is item)) asConsTree.
	self assert: yui goal equals: Cons empty cons.
	self assert: ((yui processUtterance: #(what axe2) asCons in: world) plan: world) equals: #(#(say axe2 is item)) asConsTree.
	self assert: ((yui processUtterance: #(what player1) asCons in: world) plan: world) equals: #(#(say player1 is player)) asConsTree.
	self assert: ((yui processUtterance: #(what yui) asCons in: world) plan: world) equals: #(#(say yui is player)) asConsTree.
	self assert: ((yui processUtterance: #(what room1) asCons in: world) plan: world) equals: #(#(say room1 is room)) asConsTree.
	self assert: yui goal equals: Cons empty cons.
	self assert: ((yui processUtterance: #(what nothing) asCons in: world) plan: world) equals: Cons empty.