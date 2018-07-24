listening
processUtterance: anUtterance in: aWorld
	| newGoal |
	newGoal := self goalFromUtterance: anUtterance in: aWorld.
	^ self copy
		goal: newGoal;
		kb: (newGoal cdr inject: kb into: [ :k :g | k remove: g ]).