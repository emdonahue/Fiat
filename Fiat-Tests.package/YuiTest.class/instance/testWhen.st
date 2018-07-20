asking
testWhen
	self assert: (yui ask: #(when inventory yui sword1) asCons in: world) equals: #(yui get sword1) asCons .
	self assert: (yui ask: #(when room room2 yui) asCons in: world) equals: #(yui move room2) asCons .
	self assert: (yui ask: #(when inventory player1 sword1) asCons in: world) equals: #(yui say get sword1) asCons .