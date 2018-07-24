DEP - planning
makePlanDEP: aWorld
	| endS |
	self deprecated: 'see makePlan'.
	endS := SKVar tag: #endS.
	^ [ :plan | 
	(endS subseto: goal car) & (aWorld state nsubseto: goal car)
		&
			(self
				subplan: plan
				actor: name
				goal: goal
				from: aWorld state
				to: endS
				visited: Cons empty
				restOfPlan: Cons empty
				in: aWorld) ] asGoal.