planning-dep
planSpeechAct: aPlan speaker: theSpeaker addressee: theAddressee from: startS to: endS restOfPlan: restOfPlan visited: visitedStates in: aWorld
	| g subEndS subrest |
	subrest := SKVar tag: #subRestPlan.
	subEndS := SKVar tag: #subEndS.
	g := SKVar tag: #speechGoal.
	^ aPlan
		carCdrIn: [ :step :rest | 
			step
				carCdrIn: [ :act :state | 
					state === startS
						&
						
							(act
								car: theSpeaker 
								cdrIn: [ :speechAct |
								speechAct car: #say
								cdrIn: [ :utterance | 
									(self
										say: utterance
										speaker: theSpeaker
										addressee: theAddressee
										goal: g
										in: aWorld) & (g carCdrIn: [ :a :b | (startS nsubseto: a) & (subEndS subseto: a) ])
										&
											(self
												subplan: rest
												actor: theAddressee
												goal: g
												from: startS
												to: subEndS
												visited: visitedStates
												restOfPlan: subrest
												in: aWorld)
										&
											(self
												subplan: subrest
												actor: theSpeaker
												goal: nil
												from: subEndS
												to: endS
												visited: visitedStates
												restOfPlan: restOfPlan
												in: aWorld) ] ]) ] ] .