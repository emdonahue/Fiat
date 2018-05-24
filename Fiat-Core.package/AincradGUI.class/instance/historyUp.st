api
historyUp
	historyIdx = 0
		ifTrue: [ ^ self ].
	inputArea text: (history at: historyIdx).
	historyIdx := historyIdx - 1.
	inputArea hasUnacceptedEdits: true