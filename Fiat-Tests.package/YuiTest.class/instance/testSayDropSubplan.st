speaking
testSayDropSubplan
	yui goal: (#room cons: #room1 cons: #sword1 cons) cons cons.
	world := (world remove: #(room room1 sword1)) add: #(inventory player1 sword1).
	self assert: (yui plan: world) equals: #(say drop sword1) asConsTree cons.