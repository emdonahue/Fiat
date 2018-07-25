listening
hearIsA: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	^ aQuestion
		match: #(is ? a ?)
		o: [ :obj :_ | [ :type | (self entity: obj type: type in: aWorld state) & (aGoal === (Cons empty cons: (#type cons: obj cons: type cons) cons)) ] ].