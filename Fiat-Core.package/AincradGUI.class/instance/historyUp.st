api
historyUp
	historyIdx = 1
		ifTrue: [ ^ self ].
	historyIdx = (history size + 1) 
		ifTrue:  [ self cmdCache: self inputArea pendingText ].
	historyIdx := historyIdx - 1.
	inputArea text: (history at: historyIdx).
	inputArea hasUnacceptedEdits: true