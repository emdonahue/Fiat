acting
admin: anAdmin act: anAction
	anAction = #(wait)
		ifTrue: [ ^ self runAI ].
	anAction = #(look)
		ifTrue: [ ^ self update: state ].
	anAction first = #tell
		ifTrue: [ ai addGoal: anAction allButFirst.
			^ self update: anAction ].
	anAction first = #say
		ifTrue: [^ (self processUtterance: anAction allButFirst in: self)
			update: anAction ].
	anAction first = #ask
		ifTrue: [ ^ self update: (ai ask: anAction allButFirst in: self) ].
	anAction first = #untell
		ifTrue: [ ^ (self copy ai: ai copy clearGoal) update: anAction ].
	anAction first = #+
		ifTrue: [ ^ (self add: anAction allButFirst) update: anAction ].
	anAction first = #-
		ifTrue: [ ^ (self remove: anAction allButFirst) update: anAction ].
	^ self act: (anAction copyWithFirst: anAdmin)