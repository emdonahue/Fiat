accessing structure variables
act: anAction
	anAction = #(player1 wait)
		ifTrue: [ ^ self runYui ].
	anAction = #(player1 look)
		ifTrue: [ ^ FIAWorldDelta new
				world: self;
				actions: state ].
	(anAction copyFrom: 1 to: 2) = #(player1 tell)
		ifTrue: [ ai addGoal: (anAction copyFrom: 3 to: anAction size).
			^ FIAWorldDelta new
				world: self;
				actions: anAction ].
			(anAction ) = #(player1 untell)
		ifTrue: [ 
			^ FIAWorldDelta new
				world: (self copy ai: ai copy clearGoal);
				actions: anAction ].
	^ super act: anAction