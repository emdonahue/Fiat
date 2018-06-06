subplanning
subplan: aWorld
	| endS |
	endS := SKVar tag: #endS.
	^ [ :plan | 
	(endS subseto: goal car)
		&
			(self
				subplan: plan
				actor: name
				goal: nil
				from: aWorld state
				to: endS
				visited: Cons empty
				restOfPlan: Cons empty
				in: aWorld) ] asGoal