speech
sayGo: anUtt speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	| a |
	a := SKVar new.
	^ anUtt === (#go cons: a cons) & (aGoal === ((#room cons: a cons: theAddressee cons) cons) cons)