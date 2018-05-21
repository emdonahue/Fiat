as yet unclassified
act: anAction
	self halt.
	anAction = #(player1 wait)
		ifTrue: [ ^ ai plan
				ifEmpty: [ FIAWorldDelta new
						world: self;
						actions: 'ai waits' ]
				ifNotEmpty: [ :plan | 
					FIAWorldDelta new
						world: (FIAWorld new state: plan last cdr);
						actions: (plan collect: [ :a | a car ]) force ] ].
	^ super act: anAction