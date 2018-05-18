initialization
testOmnomnom
	self assert: (world act: #omnomnom) state equals: #(#(fox sated) #(fox hungry) rabbit) asConsTree