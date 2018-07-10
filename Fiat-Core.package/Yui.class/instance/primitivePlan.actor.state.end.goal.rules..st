planning
primitivePlan: planIn actor: anActor state: startState end: endState goal: endGoal rules: theRules
	| block |
	block := [ :actor :startS :endG :plan :endS | 
	| done acting nextS |
	nextS := SKVar tag: #nextS.
	done := plan === Cons empty & (startS subseto: endG) & (endS === startS).
	acting := plan
		carCdrIn: [ :step :rest | 
			(self primitiveAct: step by: actor from: startS to: nextS rules: theRules)
				& (self primitivePlan: rest actor: actor state: nextS end: endS goal: endG rules: theRules) ].
	done | acting ].
		^ false ifTrue: [block valueWithArguments: { anActor. startState. endGoal. planIn. endState }]
		ifFalse: [block tabled: #primitivePlan
		inputs:
			{anActor.
			startState.
			endGoal}
		outputs:
			{planIn. endState}].