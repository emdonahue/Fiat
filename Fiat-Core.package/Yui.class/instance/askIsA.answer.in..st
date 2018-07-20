questions
askIsA: aQuestion answer: anAnswer in: aWorld
	^ aQuestion match: #(is ? a ?) o: [ :obj :type | (self entity: obj type: type in: aWorld) & (anAnswer === #yes) ].