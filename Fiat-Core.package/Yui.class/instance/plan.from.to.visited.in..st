planning
plan: aPlan from: startS to: endS visited: visitedStates in: aWorld
	"do we need to check that were not done befor econtinuing to plan?"

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
							(self
								plan: plan
								from: st
								to: endS
								visited: (visitedStates add: st)
								in: aWorld) & (visitedStates nembero: st) & ((self planStep: a from: startS to: st in: aWorld) | (self sayStep: a from: startS to: st in: aWorld)) ] ] ].
	^ done | planning