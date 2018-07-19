questions
askWhat: aQuestion answer: anAnswer in: aWorld
	^ aQuestion
		match: #(what ?)
		o: [ :obj | 
			(self isPlayer: obj in: aWorld) & (anAnswer === #player) | ((self isItem: obj in: aWorld) & (anAnswer === #item))
				| ((self isRoom: obj in: aWorld) & (anAnswer === #room)) ].