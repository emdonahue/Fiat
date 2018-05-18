as yet unclassified
plan
	<todo>
	| endS |
	"membero should probably be remembero here for linear resource counting"
	endS := SKVar new.
	^ [ :plan | (endS membero: goal first first) & (self plan: plan from: world state to: endS) ] asGoal run ifNotEmpty: [ :plans | plans car car ]