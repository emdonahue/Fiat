planning
speechAct: anAction from: startS to: endS restOfPlan: restOfPlan visited: visitedStates in: aWorld
	| g |
	g := SKVar tag: #speechGoal.
	^ anAction car: #say cdrIn: [ :utterance | (self say: utterance goal: g in: aWorld) & (g === restOfPlan) ]