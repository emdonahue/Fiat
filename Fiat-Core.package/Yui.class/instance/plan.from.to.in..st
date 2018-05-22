as yet unclassified
plan: aPlan from: startS to: endS in: aWorld
	| done planning |
	done := startS === endS & aPlan isEmptyo.
	planning := aPlan
		carCdrIn:
			[ :step :plan | step carCdrIn: [ :act :st | act car: name cdrIn: [ :a | (aWorld step: (name cons: a) from: startS to: st) & (self plan: plan from: st to: endS in: aWorld) ] ] ].
	^ done | planning