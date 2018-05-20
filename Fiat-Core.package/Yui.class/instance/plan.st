as yet unclassified
plan
	<todo>
	| endS |
	"membero should probably be remembero here for linear resource counting"
	endS := SKVar new.
	^ [ :plan | 
	(goal car inject: SKGoal succeed into: [ :s :g | s & (endS membero: g) ]) & (goal cdr inject: SKGoal succeed into: [ :s :g | s & (endS absento: g) ])
		& (self plan: plan from: world state to: endS) ] asGoal run ifNotEmpty: [ :plans | plans car car ]