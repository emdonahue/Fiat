planning
plan: aPlan from: startS to: endS in: aWorld
	"do we need to check that were not done befor econtinuing to plan?"
	"can we just avoid StartS from prev, so say can decide not to avoid it?"

	<todo>
	| done planning |
	done := startS === endS & aPlan isEmptyo.
	planning := aPlan
		carCdrIn: [ :step :plan | 
			step
				carCdrIn: [ :act :st | 
					act
						car: name
						cdrIn: [ :a | 
							(self planStep: a from: startS to: st in: aWorld)
								| (self sayStep: a from: startS to: st in: aWorld)
								& (self avoid: st in: plan)
								& (self plan: plan from: st to: endS in: aWorld) ] ] ].
	^ done | planning