planning
sayStep: step from: startS to: endS in: aWorld
	^ [ :playerStep | (aWorld act: (#player1 cons: playerStep) from: startS to: endS) & (step === (#say cons: playerStep)) ]