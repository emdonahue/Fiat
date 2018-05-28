planning
plan: aWorld
	"| endS |"

	"membero should probably be remembero here for linear resource counting"

	"does goal order matter here?"

	"endS := SKVar tag: #endS."

	<todo>
	^ ([ :plan :endS | 
	(endS subseto: goal car )
		& (self plan: plan from: aWorld state to: endS in: aWorld) ] asGoal
		run
)
		ifNotEmpty: [ :plans | plans car car ]