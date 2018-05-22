initialization
testFoxDie
	self assert: (world act: #foxdie) world state equals: #(#(fox hungry) rabbit rabbit) asConsTree