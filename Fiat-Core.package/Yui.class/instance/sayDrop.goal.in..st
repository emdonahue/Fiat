speech
sayDrop: anUtt goal: aGoal in: aWorld
	| a b |
	a := SKVar new.
	b := SKVar new.
	^ anUtt === (#drop cons: b cons)
		& (aGoal === (#room cons: a cons: b cons) cons cons)
		& (aWorld state membero: (#room cons: a cons: name cons))
		& (aWorld state membero: (#inventory cons: name cons: b cons))