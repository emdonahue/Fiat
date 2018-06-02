rules
move: anAction from: startS to: endS
	| a b c |
	a := SKTaggedVar tag: #mvWho.
	b := SKTaggedVar tag: #mvTo.
	c := SKTaggedVar tag: #mvFrom.
	^ (a cons: #move cons: b cons) === anAction
		&
			(self
				from: startS
				to: endS
				prereqs:
					{(#room cons: c cons: a cons).
					(#exit cons: c cons: b cons)}
				remove: {(#room cons: c cons: a cons)}
				add: {(#room cons: b cons: a cons)})