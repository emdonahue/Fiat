speaking
sayGet: anUtt speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	| a |
	a := SKVar new.
	^ anUtt === (#get cons: a cons) & (aGoal === (#inventory cons: theAddressee cons: a cons) cons cons).