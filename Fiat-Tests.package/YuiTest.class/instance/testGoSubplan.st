speaking
testGoSubplan
	yui goal: (#room cons: #room2 cons: #player1 cons) cons cons.
	self assert: (yui plan: world) first first equals: #(yui say go room2) asConsTree.