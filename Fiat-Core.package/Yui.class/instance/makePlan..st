planning
makePlan: aWorld
	| endS |
	endS := SKVar tag: #endS.
	^ [ :plan | self hierarchicalPlan: plan actor: name state: aWorld state goal: goal car rules: aWorld	"& (aWorld state nsubseto: goal car) this check may be unnecessary since tabling should limit us to first answer" ]
		asGoal.