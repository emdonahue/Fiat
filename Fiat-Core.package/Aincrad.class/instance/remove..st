editing
remove: aProposition
	^ self copy state: (state remove: aProposition asConsTree)