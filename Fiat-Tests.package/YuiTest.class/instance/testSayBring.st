listening
testSayBring
	self assert: (yui goalFromUtterance: #(bring sword1) in: world) equals: #(#(room room1 yui) (inventory yui sword1)) asConsTree cons