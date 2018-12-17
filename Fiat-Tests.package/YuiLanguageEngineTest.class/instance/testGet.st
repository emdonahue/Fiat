tests
testGet
	self assert: (yle parse: #(get sword1) asConsTree) equals: #(get sword1) asConsTree.
	self assert: (yle parse: #(get shield2) asConsTree) equals: #(get shield2) asConsTree.