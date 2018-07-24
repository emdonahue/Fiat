DEP - questions
askWhy: aQuestion answer: anAnswer in: aWorld
	^ aQuestion car: #why cdrIn: [ :prop | self why: prop action: anAnswer history: history ].