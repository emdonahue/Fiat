rules
get: aRule from: startS to: endS
	| a b c |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
	^ (a cons: #get cons: b cons) === aRule
		&
			(self
				from: startS
				to: endS
				prereqs:
					{(#room cons: c cons: a cons).
					(#room cons: c cons: b cons)}
				remove: {(#room cons: c cons: b cons)}
				add: {(#inventory cons: a cons: b cons)})