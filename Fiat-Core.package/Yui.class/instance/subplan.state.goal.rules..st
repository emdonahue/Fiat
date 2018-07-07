planning
subplan: planIn state: currS goal: endState rules: theRules
	^ [ :actor :startS :endS :plan | 
	| done acting nextS |
	nextS := SKVar tag: #nextS.
	done := startS === endS & (plan === Cons empty).
	acting := plan
		carCdrIn: [ :step :rest | 
			(theRules act: (actor cons: step) from: startS to: nextS)
				& (self subplan: rest state: (currS copy world: nextS) goal: endS rules: theRules) ].
	done | acting.
	] tabled: #plan inputs: { currS actor. currS world. endState } outputs: { planIn }.