planning
plan: aWorld
	<todo>
	| endS |
	"membero should probably be remembero here for linear resource counting"
	"does goal order matter here?"
	endS := SKVar new.
	^ [ :plan | 
	(goal car inject: SKGoal succeed into: [ :s :g | s & (endS membero: g) ]) & (goal cdr inject: SKGoal succeed into: [ :s :g | s & (endS absento: g) ])
		& (self plan: plan from: aWorld state to: endS in: aWorld) ] asGoal run ifNotEmpty: [ :plans | plans car car ]