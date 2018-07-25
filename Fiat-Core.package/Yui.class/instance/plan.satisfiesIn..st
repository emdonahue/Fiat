planning
plan: aPlan satisfiesIn: aWorld
	^ (self hierarchicalPlan: aPlan actor: name state: (aWorld state cons: kb) goal: goal rules: aWorld) succeeds.