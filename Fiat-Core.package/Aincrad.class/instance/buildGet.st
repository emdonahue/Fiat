rules
buildGet
	| a b c |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
	^ self
		ruleFromAction: (a cons: #get cons: b cons)
		prereqs:
			{(#room cons: c cons: a cons).
			(#room cons: c cons: b cons)}
		remove: {(#room cons: c cons: b cons)}
		add: {(#inventory cons: a cons: b cons)}