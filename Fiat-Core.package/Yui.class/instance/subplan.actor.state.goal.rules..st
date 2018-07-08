planning
subplan: planIn actor: anActor state: startState goal: endState rules: theRules
	^ [ :actor :startS :endS :plan | 
	| done acting nextS |
	nextS := SKVar tag: #nextS.
	done := startS === endS & (plan === Cons empty) & (endS subseto: goal car).
	acting := plan
		carCdrIn: [ :step :rest | (theRules act: (actor cons: step) from: startS to: nextS) & (self subplan: rest actor: actor state: nextS goal: endS rules: theRules) ].
	done | acting ]
		tabled: #plan
		inputs:
			{anActor.
			startState.}
		outputs:
			{endState. planIn.
			}.