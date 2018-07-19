types
isPlayer: anEntity in: aWorld
	^ [ :room | anEntity === #player1 | (anEntity === name) & (aWorld state membero: (#room cons: room cons: anEntity cons)) ] asGoal.