api
historyDown
	historyIdx = (history size)
		ifTrue: [ inputArea text: cmdCache. inputArea hasUnacceptedEdits: true. historyIdx := historyIdx + 1. ^ self ].
	historyIdx = (history size + 1)
		ifTrue: [  ^ self ].
	historyIdx := historyIdx + 1.
	inputArea text: (history at: historyIdx).
	inputArea hasUnacceptedEdits: true