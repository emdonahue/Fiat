knowledge
ask: aQuery in: aWorld
	aQuery first = #where
		ifTrue: [ ^ ([ :room | aWorld query: (#room cons: room cons: aQuery second cons) ] asGoal run collect: #first) ifEmpty: 'I dont know' ifNotEmpty: [ :ans | ans force ] ].
	^ 'I dont know'