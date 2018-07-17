acting
admin: anAdmin act: anAction
	anAction = #(wait)
		ifTrue: [ ^ self runAI ].
	anAction = #(look)
		ifTrue: [ ^ self update: state force ].
	anAction first = #esp
		ifTrue: [ ai addGoal: anAction allButFirst.
			^ self update: anAction ].
	anAction first = #say
		ifTrue: [ ^ (self processUtterance: anAction allButFirst in: self) update: anAction ].
	anAction first = #ask
		ifTrue: [ ^ self update: (ai ask: anAction allButFirst in: self) ].
	anAction first = #wipe
		ifTrue: [ ^ (self copy ai: ai copy clearGoal) update: anAction ].
	anAction first = #+
		ifTrue: [ ^ (self add: anAction allButFirst) update: anAction ].
	anAction first = #-
		ifTrue: [ ^ (self remove: anAction allButFirst) update: anAction ].
	anAction = #(inspect)
		ifTrue: [ ai inspect.
			^ self update: 'Opened inspector on Yui' ].
	^ self act: (anAction copyWithFirst: anAdmin).