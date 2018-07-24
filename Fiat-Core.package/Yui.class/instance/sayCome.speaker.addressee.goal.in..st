speaking
sayCome: anUtt speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	| a |
	a := SKVar new.
	^ anUtt === #come cons & (aGoal === (#room cons: a cons: theAddressee cons) cons cons) & (aWorld state membero: (#room cons: a cons: theSpeaker cons))