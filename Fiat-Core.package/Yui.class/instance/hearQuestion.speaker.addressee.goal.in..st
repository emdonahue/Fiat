DEP-listening
hearQuestion: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	^ (self hearWhat: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld)
		| (self hearIsA: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld)
		| (self hearWhere: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld)
		| (self hearIn: aQuestion speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld).