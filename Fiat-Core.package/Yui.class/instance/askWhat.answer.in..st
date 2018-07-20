questions
askWhat: aQuestion answer: anAnswer in: aWorld
	^ aQuestion
		match: #(what ?)
		o: [ :obj | 
			self entity: obj type: anAnswer in: aWorld ].