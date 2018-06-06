listening
testSayDrop
	| w |
	self assert: (yui goalFromUtterance: #(drop sword1) in: world) equals: Cons empty cons.
	w := world copy state: ((world state remove: #(room room1 sword1) asConsTree) add: #(inventory yui sword1) asConsTree).
	self assert: (yui goalFromUtterance: #(drop sword1) in: w) equals: #(room room1 sword1) asConsTree cons cons