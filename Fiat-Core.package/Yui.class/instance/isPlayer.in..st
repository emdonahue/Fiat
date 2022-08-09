DEP-types
isPlayer: anEntity in: aState
	^ [ :room | anEntity === #player1 | (anEntity === name) & (aState membero: (#room cons: room cons: anEntity cons)) ] asGoal.