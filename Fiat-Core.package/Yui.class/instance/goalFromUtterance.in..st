listening
goalFromUtterance: anUtterance in: aWorld
	| utt a |
	utt := anUtterance asConsR.
	a := SKVar new.
	anUtterance = #(nevermind)
		ifTrue: [ ^ Cons empty cons: Cons empty ].
	^ [ :g | (self say: utt speaker: #player1 addressee: name goal: g in: aWorld) | (self hearQuestion: utt speaker: #player1 addressee: name goal: g in: aWorld) ]
		asGoal runList ifEmpty: [ goal ] ifNotEmpty: [ :gs | gs car car ].