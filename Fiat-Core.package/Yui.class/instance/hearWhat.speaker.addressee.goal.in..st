listening
hearWhat: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	^ aQuestion match: #(what ?) o: [ :obj | [ :type | (self entity: obj type: type in: aWorld state) & (aGoal === (Cons empty cons: (#type cons: obj cons: type cons) cons)) ] ].