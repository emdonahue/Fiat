planning
hierarchicalPlan: planIn actor: anActor state: startState goal: endGoal rules: theRules
	| block |
	block := [ :actor :endG :startS :plan | 
	| done acting nextS |
	nextS := SKVar tag: #nextS.
	startS
		carCdrIn: [ :worldS :kbS | 
			done := plan === Cons empty & (self state: startS satisfies: endG).
			acting := plan
				carCdrIn: [ :step :rest | 
					(self primitiveAct: step by: actor from: startS to: nextS rules: theRules)
						| (self speechAct: step by: actor from: startS to: nextS rules: theRules)
						| (self sayConstative: step from: startS to: nextS) 
						& (self hierarchicalPlan: rest actor: actor state: nextS goal: endG rules: theRules) ].
			done | acting ] ].
	^ false
		ifTrue: [ block
				valueWithArguments:
					{anActor.
					endGoal.
					startState.
					planIn.} ]
		ifFalse: [ block
				tabled: #hierarchicalPlan
				inputs:
					{anActor.
					endGoal.
					startState.}
				outputs: {planIn.} ].