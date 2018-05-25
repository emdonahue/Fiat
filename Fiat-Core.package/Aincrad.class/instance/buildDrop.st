rules
buildDrop
	| a b c |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
	^ self
		ruleFromAction: (a cons: #drop cons: b cons)
		prereqs: {(#room cons: c cons: a cons)}
		remove: {(#inventory cons: a cons: b cons)}
		add: {(#room cons: c cons: b cons)}