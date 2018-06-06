speech
goalFromUtterance: anUtterance in: aWorld
	| utt a |
	utt := anUtterance asConsTree.
	a := SKVar new.
	anUtterance first = #get
		ifTrue: [ ^ (#inventory cons: name cons: anUtterance second cons) cons cons: Cons empty ].
	anUtterance = #(nevermind)
		ifTrue: [ ^ Cons empty cons: Cons empty ].
	^ [ :g | 
	self
		say: utt
		speaker: #player1
		addressee: name
		goal: g
		in: aWorld ] asGoal run ifEmpty: [ goal ] ifNotEmpty: [ :gs | gs car car ]