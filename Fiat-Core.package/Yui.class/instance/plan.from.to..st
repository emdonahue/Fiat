as yet unclassified
plan: aPlan from: startS to: endS
	| done planning |
	done := startS === endS & aPlan isEmptyo.
	planning := aPlan carCdrIn: [ :step :plan | step carCdrIn: [ :act :st | (world step: act from: startS to: st) & (self plan: plan from: st to: endS) ] ].
	^ done | planning