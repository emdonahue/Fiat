ai
runAI


	^ (ai plan: self)
		ifEmpty: [ ai clearGoal.
			FIAUpdate new
				world: self;
				actions: 'yui waits' ]
		ifNotEmpty: [ :mixedPlan | 
			| plan |
			plan := (mixedPlan dropWhile: [ :sw | sw car cdr car ~= #say ])
				ifEmpty: [ ai clearGoal.
					mixedPlan ]
				ifNotEmpty: [ :sayPlan | (mixedPlan takeWhile: [ :sw | sw car cdr car ~= #say ]) append: sayPlan first cons ].
			FIAUpdate new
				world:
					(self copy
						state: ((plan takeWhile: [ :sw | sw car cdr car ~= #say ]) ifEmpty: state ifNotEmpty: [ :states | states last cdr ]);
						ai: ai copy);
				actions: (plan collect: [ :a | a car ]) force ]