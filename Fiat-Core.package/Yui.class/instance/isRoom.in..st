types
isRoom: anEntity in: aWorld
	^ [ :thing_room | 
	(aWorld state membero: (#room cons: anEntity cons: thing_room)) | (aWorld state membero: (#exit cons: anEntity cons: thing_room))
		| (aWorld state membero: (#exit cons: thing_room cons: anEntity cons)) ] asGoal.