rules
drop: anAction from: startS to: endS
	| a b c |
	a := SKTaggedVar tag: #dpWho.
	b := SKTaggedVar tag: #dpWhat.
	c := SKTaggedVar tag: #dpWhere.
	^ (a cons: #drop cons: b cons) === anAction
		&
			(self
				from: startS
				to: endS
				prereqs: {(#room cons: c cons: a cons)}
				remove: {(#inventory cons: a cons: b cons)}
				add: {(#room cons: c cons: b cons)})