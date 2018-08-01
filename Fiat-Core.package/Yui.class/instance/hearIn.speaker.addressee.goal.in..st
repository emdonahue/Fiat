listening
hearIn: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	| fact |
	^ aQuestion
		match: #(is ? in ?)
		o: [ :obj :room | 
			fact := (#room cons: room cons: obj cons).
			 (aWorld state membero: fact) & (aGoal === (Cons empty cons: fact cons)) ].