DEP-listening
processUtterance: anUtterance in: aWorld
	| newGoal myself |
	myself := self copy history: (history add: ((#player1 cons: #say cons: anUtterance) cons: aWorld state)).
	newGoal := myself goalFromUtterance: anUtterance in: aWorld.
	^ myself copy
		goal: newGoal;
		knowledgebase: (newGoal cdr inject: beliefs into: [ :k :g | k remove: g ]).