questions
testIsA
	world := world add: #(inventory player1 axe2).
	self assert: ((yui processUtterance: #(is player1 a player) asCons in: world) plan: #(#(say player1 is player)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is player1 a player) asCons in: world) plan: #(#(say yes)) asConsTree satisfiesIn: world).
	self deny: ((yui processUtterance: #(is player1 a item) asCons in: world) plan: #(#(say yes)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is player1 a item) asCons in: world) plan: #(#(say player1 is player)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is yui a player) asCons in: world) plan: #(#(say yui is player)) asConsTree satisfiesIn: world).
	self deny: ((yui processUtterance: #(is yui a player) asCons in: world) plan: #(#(say yui is item)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is yui a item) asCons in: world) plan: #(#(say yui is player)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is sword1 a item) asCons in: world) plan: #(#(say sword1 is item)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is axe2 a item) asCons in: world) plan: #(#(say yes)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is room1 a room) asCons in: world) plan: #(#(say yes)) asConsTree satisfiesIn: world).