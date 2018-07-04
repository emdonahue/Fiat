planning
makePlan: aWorld
	| endS |
	endS := SKVar tag: #endS.
	^ [ :plan | 
	(endS subseto: goal car) & (aWorld state nsubseto: goal car)
		&
			(self
				subplan: plan
				plano: Cons empty
				state:
					(FIAPlannerState new
						world: aWorld state;
						actor: name)
				goal: endS
				rules: aWorld) ] asGoal.