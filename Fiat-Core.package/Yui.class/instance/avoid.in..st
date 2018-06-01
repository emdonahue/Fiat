planning
avoid: aState in: aPlan
	^  aPlan isEmptyo
				|
					(aPlan
						carCdrIn: [ :actState :plan | 
							actState
								carCdrIn: [ :act :state | aState =/= state & (self avoid: aState in: plan) ] ]) 