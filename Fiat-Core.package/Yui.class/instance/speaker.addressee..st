subplanning
speaker: aSpeaker addressee: anAddressee
	^ (aSpeaker === name & (anAddressee === #player1)) | 
	(aSpeaker === #player1 & (anAddressee === name)) 