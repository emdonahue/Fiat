planning
plan: aPlan satisfiesIn: aWorld
	^ (self hierarchicalPlan: aPlan actor: name state: (aWorld state cons: beliefs) goal: goal rules: aWorld) succeeds.