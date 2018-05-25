rules
buildMove
	| a b c |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
	^ self
		ruleFromAction: (a cons: #move cons: b cons)
		prereqs:
			{(#room cons: c cons: a cons).
			(#exit cons: c cons: b cons)}
		remove: {(#room cons: c cons: a cons)}
		add: {(#room cons: b cons: a cons)}