rules
act: anAction from: startS to: endS

	^ (self get: anAction from: startS to: endS)
		| (self drop: anAction from: startS to: endS)
		| (self move: anAction from: startS to: endS)