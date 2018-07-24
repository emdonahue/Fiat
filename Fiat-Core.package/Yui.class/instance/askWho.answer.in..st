DEP - questions
askWho: aQuestion answer: anAnswer in: aWorld
	^ aQuestion car: #who cdrIn: [ :prop | self who: prop action: anAnswer history: history ].