speaking
testSayGo
	self assert: (yui goalFromUtterance: #(go room2) in: world) equals: #(#(room room2 yui)) asConsTree cons