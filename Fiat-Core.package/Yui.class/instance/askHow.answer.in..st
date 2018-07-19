questions
askHow: aQuestion answer: anAnswer in: aWorld
	^ aQuestion car: #how cdrIn: [ :prop | self hierarchicalPlan: anAnswer actor: name state: aWorld state goal: prop cons rules: aWorld ].