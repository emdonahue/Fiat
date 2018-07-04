planning
subplan: planIn plano: planOut state: currS goal: endS rules: theRules
	| done acting nextS |
	nextS := SKVar tag: #nextS.
	done := currS world === endS & (planIn === planOut).
	acting := planIn
		match:
			{{currS actor.
			#'.'.
			#?.}.
			#'.'.
			#?.}
		o: [ :step :rest | 
			(theRules act: (currS actor cons: step) from: currS world to: nextS) & (self
				subplan: rest
				plano: planOut
				state: (currS copy world: nextS)
				goal: endS
				rules: theRules) ].
	^ done | acting.