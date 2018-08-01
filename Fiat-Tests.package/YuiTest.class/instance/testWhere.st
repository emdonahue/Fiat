questions
testWhere
	self assert: (yui goalFromUtterance: #(where player1) asCons in: world) equals: (Cons empty cons: (#room cons: #room1 cons: #player1 cons) cons).
	self assert: ((yui processUtterance: #(where player1) asCons in: world) plan: world) equals: #(#(say player1 in room1)) asConsTree.
	self assert: ((yui processUtterance: #(where yui) asCons in: world) plan: world) equals: #(#(say yui in room1)) asConsTree.
	self assert: ((yui processUtterance: #(where sword1) asCons in: world) plan: world) equals: #(#(say sword1 in room1)) asConsTree.