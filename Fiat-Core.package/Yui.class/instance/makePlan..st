planning
makePlan: aWorld
	^ [ :plan :endS | 
	(endS subseto: goal car)
		& (self plan: plan from: aWorld state to: endS in: aWorld) ] asGoal