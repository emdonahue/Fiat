initialization
testFoxHungry
	self assert: ((world act: #omnomnom) world act: #foxhungry) world state equals: #(#(fox hungry) #(fox hungry) rabbit) asConsTree