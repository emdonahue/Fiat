planning
makePlan: aWorld
	^ [ :plan | self hierarchicalPlan: plan actor: name state: (aWorld state cons: kb) goal: goal rules: aWorld ] asGoal.