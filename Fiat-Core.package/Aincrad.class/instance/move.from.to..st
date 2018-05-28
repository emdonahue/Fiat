rules
move: anAction from: startS to: endS
	| a b c |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
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