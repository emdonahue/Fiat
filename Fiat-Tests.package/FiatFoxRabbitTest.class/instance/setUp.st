initialization
setUp
	"Demo world starts with two rabbits and two hungry foxes"

	world := FIAFoxRabbitWorld  new state: #(#(fox hungry) #(fox hungry) rabbit rabbit) asConsTree