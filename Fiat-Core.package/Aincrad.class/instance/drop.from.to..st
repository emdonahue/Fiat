rules
drop: anAction from: startS to: endS
	| a b c |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
	^ ((a cons: #drop cons: b cons) === anAction)
		&
			(self
				from: startS
				to: endS
		prereqs: {(#room cons: c cons: a cons)}
		remove: {(#inventory cons: a cons: b cons)}
		add: {(#room cons: c cons: b cons)})