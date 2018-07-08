planning
makePlan: aWorld
	| endS |
	endS := SKVar tag: #endS.
	^ [ :plan | "(endS subseto: goal car) &" (self subplan: plan actor: name state: aWorld state goal: endS rules: aWorld)	"& (aWorld state nsubseto: goal car) this check may be unnecessary since tabling should limit us to first answer" ]
		asGoal.