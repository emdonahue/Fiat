DEP-listening
hearWhere: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	^ aQuestion
		match: #(where ?)
		o: [ :obj | [ :room | (aWorld state membero: (#room cons: room cons: obj cons)) & (aGoal === (Cons empty cons: (#room cons: room cons: obj cons) cons)) ] ].