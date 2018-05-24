as yet unclassified
askStep: step from: startS to: endS in: aWorld
	^ [ :playerStep | (aWorld step: (#player1 cons: playerStep) from: startS to: endS) & (step === (#say cons: playerStep)) ]