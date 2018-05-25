planning
plan: aPlan from: startS to: endS in: aWorld
	| done planning |
	done := startS === endS & aPlan isEmptyo.
	planning := aPlan
		carCdrIn: [ :step :plan | 
			step
				carCdrIn: [ :act :st | 
					act
						car: name
						cdrIn: [ :a | 
							((self
								planStep: a
								from: startS
								to: st
								in: aWorld) | (self askStep: a from: startS to: st in: aWorld))
								&
									(self
										plan: plan
										from: st
										to: endS
										in: aWorld) ] ] ].
	^ done | planning