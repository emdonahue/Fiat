initialization
testFoxDie
	self assert: (world act: #foxdie) state equals: #((fox hungry) rabbit rabbit) asConsTree