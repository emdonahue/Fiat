speaking
sayBring: anUtt speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	| a b |
	a := SKVar new.
	b := SKVar new.
	^ anUtt === (#bring cons: b cons) & (aGoal === ((#room cons: a cons: theAddressee cons) cons: (#inventory cons: theAddressee cons: b cons) cons) cons)
		& (aWorld state membero: (#room cons: a cons: theSpeaker cons))