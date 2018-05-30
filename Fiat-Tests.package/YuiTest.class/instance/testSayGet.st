speaking
testSayGet

	self assert: ( yui goalFromUtterance: #(get sword1) in: world) equals: #(#(inventory yui sword1)) asConsTree cons.