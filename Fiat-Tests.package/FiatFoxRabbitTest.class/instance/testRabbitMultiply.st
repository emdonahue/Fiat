initialization
testRabbitMultiply
	self assert: (world act: #rabbitmultiply) state equals: #(rabbit rabbit rabbit rabbit #(fox hungry) #(fox hungry) ) asConsTree