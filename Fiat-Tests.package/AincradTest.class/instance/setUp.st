initialization
setUp
	world := Aincrad new state: #(#(room room1 player1) #(room room1 sword1) #(exit room1 room2) #(exit room2 room1) #(room room1 yui)) asConsTree.
	world ai: (Yui new name: #yui; knowledgebase: #(#(type sword1 item) #(type axe2 item) #(type player1 player) #(type yui player) #(type room1 room) #(type room2 room)) asConsTree).
	world initializeAI.