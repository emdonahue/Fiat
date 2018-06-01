rules
drop: anAction from: startS to: endS
	| a b c |
	a := SKTaggedVar tag: #dpNNP.
	b := SKTaggedVar tag: #dpNN.
	c := SKTaggedVar tag: #dpIN.
	^ (a cons: #drop cons: b cons) === anAction
		&
			(self
				from: startS
				to: endS
				prereqs: {(#room cons: c cons: a cons)}
				remove: {(#inventory cons: a cons: b cons)}
				add: {(#room cons: c cons: b cons)})