initialization
setUp
"	world := Aincrad new state: #(#(room room1 player1) #(room room1 yui) #(room room1 sword1) #(exit room1 room2) #(exit room2 room1)).
	yui := Yui new
		name: #yui;
		kb:
			#(#(type sword1 item) #(type axe2 item) #(type player1 player) #(type yui player) #(type room1 room) #(type room2 room) #(room room1 player1) #(room room1 yui) #(room room1 sword1) (room room2 player1) (room room2 yui) (room room2 sword1))
				asConsTree.
	world ai: yui.
	world initializeAI."