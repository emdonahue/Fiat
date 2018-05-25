initialization
setUp
	world := Aincrad new state: #(#(room room1 player1) #(room room1 yui) #(room room1 sword1) #(exit room1 room2) #(exit room2 room1)).
	yui := Yui new name: #yui.
	SKDelayed enforceContractC.
	SKState enforceContractC.
	SKPackage enforceContractC.
	SKGoal enforceContractC