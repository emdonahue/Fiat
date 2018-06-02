rules
get: aRule from: startS to: endS
	| a b c |
	a := SKTaggedVar tag: #gtWho.
	b := SKTaggedVar tag: #gtWhat.
	c := SKTaggedVar tag: #gtWhere.
	^ (a cons: #get cons: b cons) === aRule
		& (b =/= #player1 & (b =/= #yui))
		&
			(self
				from: startS
				to: endS
				prereqs:
					{(#room cons: c cons: a cons).
					(#room cons: c cons: b cons)}
				remove: {(#room cons: c cons: b cons)}
				add: {(#inventory cons: a cons: b cons)})