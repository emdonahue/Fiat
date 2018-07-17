ai
runAI
	^ (ai plan: self)
		ifEmpty: [ ai clearGoal.
			FIAUpdate new
				world: self;
				actions: 'Yui waits' ]
		ifNotEmpty: [ :mixedPlan | 
			| plan |
			plan := (mixedPlan dropWhile: [ :sw | sw car ~= #say ])
				ifEmpty: [ "if no 'say' commands, use entire mixedPlan as plan."
					ai clearGoal.
					mixedPlan ]
				ifNotEmpty:
					[ :sayPlan | "if say commands present, take all actions up to and including first say" (mixedPlan takeWhile: [ :sw | sw  car ~= #say ]) append: sayPlan first cons ].
			FIAUpdate new
				world: ((plan reject: [ :s | s car = #say ]) inject: self into: [ :world :action | world aiAct: action ]);
				actions: (plan collect: [:a | ai name cons: a ]) force ].