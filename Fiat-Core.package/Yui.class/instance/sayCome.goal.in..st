speech
sayCome: anUtt goal: aGoal in: aWorld
	| a |
	a := SKVar new.
	^ anUtt === #come cons & (aGoal === (#room cons: a cons: name cons) cons cons)
		& (aWorld state membero: (#room cons: a cons: #player1 cons))