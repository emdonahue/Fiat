initialization
testFoxMultiply
	self assert: ((world act: #foxmultiply) ) state equals: #(#(fox hungry) #(fox hungry) #(fox hungry)  rabbit rabbit) asConsTree