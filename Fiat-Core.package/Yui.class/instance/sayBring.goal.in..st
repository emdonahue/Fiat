speech
sayBring: anUtt goal: aGoal in: aWorld
	| a b  |
	a := SKVar new.
	b := SKVar new.
	^ anUtt === (#bring cons: b cons)
		& (aGoal === ((#room cons: a cons: name cons) cons: (#inventory cons: name cons: b cons) cons) cons)
		& (aWorld state membero: (#room cons: a cons: #player1 cons))