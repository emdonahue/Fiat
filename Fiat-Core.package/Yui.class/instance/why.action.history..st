history
why: aProposition action: anAction history: aHistory
	^ aHistory match: #(#(? #'.' ?) . ?) o: [ :presA :presS :past | (past match: #((? . ?) . ?) o: [ :pastA :pastS :_ | 
			(presS membero: aProposition) & (pastS nembero: aProposition ) & (anAction === presA)
			 ]) | (self why: aProposition action: anAction history: past) ].