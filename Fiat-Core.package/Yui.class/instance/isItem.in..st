DEP-types
isItem: anEntity in: aState
	^ [ :room_inv | 
	anEntity =/= #player1 & (anEntity =/= name)
		& ((aState membero: (#room cons: room_inv cons: anEntity cons)) | (aState membero: (#inventory cons: room_inv cons: anEntity cons))) ] asGoal.