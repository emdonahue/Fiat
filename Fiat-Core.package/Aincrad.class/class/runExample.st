as yet unclassified
runExample
	| a y |
	a := Aincrad new state: #(#(room room1 player1) #(room room1 yui) #(room room1 sword1) #(exit room1 room2) #(exit room2 room1)).
	y := Yui new.
	a ai: y.
	a initializeAI.
	a linkStart.