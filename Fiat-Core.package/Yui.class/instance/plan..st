planning
plan: aWorld
	<todo>
	| endS objective |
	"membero should probably be remembero here for linear resource counting"
	"does goal order matter here?"
	endS := SKVar new.
	objective := goal car
		inject: SKGoal succeed
		into: [ :s :g | s & (endS membero: g) ].
	^ [ :plan | 
	objective & (self plan: plan from: aWorld state to: endS in: aWorld) ]
		asGoal run ifNotEmpty: [ :plans | plans car car ]