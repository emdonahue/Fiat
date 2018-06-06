planning
plan: aWorld
	"| endS |"

	"membero should probably be remembero here for linear resource counting"

	"does goal order matter here?"

	"endS := SKVar tag: #endS."

	<todo>
	^ (self makePlan: aWorld actor: name goals: goal car) run ifNotEmpty: [ :plans | plans car car ]