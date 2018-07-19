planning-dep
speaker: aSpeaker addressee: anAddressee
	self deprecated: 'See planning protocol'.
	^ aSpeaker === name & (anAddressee === #player1) | (aSpeaker === #player1 & (anAddressee === name)).