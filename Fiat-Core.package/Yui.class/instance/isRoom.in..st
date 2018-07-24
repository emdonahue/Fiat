types
isRoom: anEntity in: aState
	^ [ :thing_room | 
	(aState membero: (#room cons: anEntity cons: thing_room)) | (aState membero: (#exit cons: anEntity cons: thing_room))
		| (aState membero: (#exit cons: thing_room cons: anEntity cons)) ] asGoal.