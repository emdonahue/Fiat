initialization
testFoxHungry
	self assert: ((world act: #omnomnom) act: #foxhungry) state equals: #(#(fox hungry) #(fox hungry) rabbit) asConsTree