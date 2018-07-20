acting
action: anAction state: aState
	^ self copy state: aState;
	ai: (ai action: anAction state: aState).