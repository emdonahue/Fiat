subplanning
speechAct: aPlan speaker: theSpeaker addressee: theAddressee from: startS to: endS restOfPlan: restOfPlan visited: visitedStates in: aWorld
	| g end |
	g := SKVar tag: #speechGoal.
	end := SKVar tag: #speechEndS.
	^ aPlan
		carCdrIn: [ :step :rest | 
			step
				carCdrIn: [ :act :state | 
					state === startS
						&
							(act
								car: #say
								cdrIn: [ :utterance | 
									(self
										say: utterance
										speaker: theSpeaker
										addressee: theAddressee
										goal: g
										in: aWorld)
										&
										(g carCdrIn: [:a :b | end subseto: a])
										&
											(self
												subplan: rest
												actor: theAddressee
												goal: g
												from: startS
												to: end
												visited: visitedStates
												restOfPlan: restOfPlan
												in: aWorld) ]) ] ]