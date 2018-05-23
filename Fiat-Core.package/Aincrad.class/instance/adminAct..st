accessing structure variables
adminAct: anAction
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
	(anAction copyFrom: 1 to: 2) = #(player1 ask)
		ifTrue: [ ^ FIAWorldDelta new
				world: self;
				actions: (ai ask: (anAction copyFrom: 3 to: anAction size) in: self) ].
	anAction = #(player1 untell)
		ifTrue: [ ^ FIAWorldDelta new
				world: (self copy ai: ai copy clearGoal);
				actions: anAction ].
	^ [ :nxt | self adminStep: anAction from: state to: nxt ] asGoal run
		ifEmpty: [ FIAWorldDelta new
				world: self;
				actions: 'What you expected, hasnt happened' ]
		ifNotEmpty: [ :suc | 
			FIAWorldDelta new
				world: (self class new state: suc first first);
				actions: anAction ]