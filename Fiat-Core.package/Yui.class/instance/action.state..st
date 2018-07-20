accessing
action: anAction state: aState
	^ self copy history: (history add: (anAction cons: aState))