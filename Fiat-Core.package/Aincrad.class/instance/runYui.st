accessing structure variables
runYui
	^ (ai plan: self)
		ifEmpty: [ FIAWorldDelta new
				world: self;
				actions: 'yui waits' ]
		ifNotEmpty: [ :plan | 
			FIAWorldDelta new
				world: (self copy state: plan last cdr; ai: ai copy clearGoal);
				actions: (plan collect: [ :a | a car ]) force ]