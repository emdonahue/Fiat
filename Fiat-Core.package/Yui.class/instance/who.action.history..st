history
who: aProposition action: anAction history: aHistory
	^ aHistory
		match: #(#(? #'.' ?) #'.' ?)
		o: [ :presA :presS :past | 
			presA === (anAction cons: aProposition)
				| (self who: aProposition action: anAction history: past) ].