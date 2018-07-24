speaking
sayDrop: anUtt speaker: theSpeaker addressee: theAddressee goal: aGoal in: aWorld
	| a b |
	a := SKVar new.
	b := SKVar new.
	^ anUtt === (#drop cons: b cons) & (aGoal === (#room cons: a cons: b cons) cons cons) & (aWorld state membero: (#room cons: a cons: theAddressee cons))
		& (aWorld state membero: (#inventory cons: theAddressee cons: b cons))