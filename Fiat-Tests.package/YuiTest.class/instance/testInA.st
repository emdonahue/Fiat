questions
testInA
	self assert: (yui goalFromUtterance: #(is player1 in room1) asCons in: world) equals: (Cons empty cons: (#room cons: #room1 cons: #player1 cons) cons).
	self assert: ((yui processUtterance: #(is player1 in room1) asCons in: world) plan: #(#(say player1 in room1)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is player1 in room1) asCons in: world) plan: #(#(say yes)) asConsTree satisfiesIn: world).
	self deny: ((yui processUtterance: #(is player1 in room2) asCons in: world) plan: #(#(say yes)) asConsTree satisfiesIn: world).
	self deny: ((yui processUtterance: #(is player1 in room3) asCons in: world) plan: #(#(say yes)) asConsTree satisfiesIn: world).
	self assert: ((yui processUtterance: #(is sword1 in room1) asCons in: world) plan: #(#(say sword1 in room1)) asConsTree satisfiesIn: world).