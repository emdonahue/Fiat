planning
makePlan: aWorld actor: anActor goals: theGoals
	^ [ :plan :endS | 
	(endS subseto: theGoals )
		&
			(self
				plan: plan
				from: aWorld state
				to: endS
				visited: Cons empty
				in: aWorld) ] asGoal