asking
testHow
	self assert: (yui ask: #(how inventory yui sword1) asCons in: world) equals: #(get sword1) asCons cons.
	self assert: (yui ask: #(how room room2 yui) asCons in: world) equals: #(move room2) asCons cons.
	self assert: (yui ask: #(how inventory player1 sword1) asCons in: world) equals: #(say get sword1) asCons cons.