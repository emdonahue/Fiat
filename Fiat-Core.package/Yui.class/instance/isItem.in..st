types
isItem: anEntity in: aWorld
	^ [ :room_inv | 
	anEntity =/= #player1 & (anEntity =/= name)
		& ((aWorld state membero: (#room cons: room_inv cons: anEntity cons)) | (aWorld state membero: (#inventory cons: room_inv cons: anEntity cons))) ] asGoal.