commands
say: anUtterance speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	^ (self
		sayCome: anUtterance
		speaker: theSpeaker
		addressee: theAddressee
		goal: aGoal
		in: aWorld)
		|
			(self
				sayBring: anUtterance
				speaker: theSpeaker
				addressee: theAddressee
				goal: aGoal
				in: aWorld)
		|
			(self
				sayDrop: anUtterance
				speaker: theSpeaker
				addressee: theAddressee
				goal: aGoal
				in: aWorld)
		|
			(self
				sayGo: anUtterance
				speaker: theSpeaker
				addressee: theAddressee
				goal: aGoal
				in: aWorld) 
				| (self
				sayGet: anUtterance
				speaker: theSpeaker
				addressee: theAddressee
				goal: aGoal
				in: aWorld).