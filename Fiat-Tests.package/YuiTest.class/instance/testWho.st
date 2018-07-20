asking
testWho
	yui history: ((#(player1 get sword1) asCons cons: nil) cons: (#(yui move room2) asCons cons: nil) cons).
	self assert: (yui ask: #(who get sword1) in: world) equals: #player1.
	self assert: (yui ask: #(who move room2) in: world) equals: #yui.
	