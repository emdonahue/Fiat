planning
makePlan: aWorld
	| endS |
	endS := SKVar tag: #endS.
	^ [ :plan | self hierarchicalPlan: plan actor: name state: (aWorld state cons: kb) goal: goal rules: aWorld ] asGoal.