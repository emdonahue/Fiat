listening
testSayCome
	self assert: (yui goalFromUtterance: #(come) in: world) equals: #(#(room room1 yui)) asConsTree cons