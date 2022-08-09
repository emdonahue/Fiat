DEP-planning
makePlan: aWorld
	^ [ :plan | self hierarchicalPlan: plan actor: name state: (aWorld state cons: beliefs) goal: goal rules: aWorld ] asGoal.