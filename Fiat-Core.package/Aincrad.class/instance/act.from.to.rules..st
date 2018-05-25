acting
act: anAction from: startS to: endS rules: ruleSet
	"Prereqs should have their own membero checks: remberAllo is redundant"

	<todo>
	| rule delta pass |
	rule := SKVar new.
	delta := SKVar new.
	pass := SKVar new.
	^ (ruleSet membero: rule)
		&
			(rule
				car: anAction asConsTree
				cdrIn: [ :pra | 
					pra
						carCdrIn: [ :prereq :ra | 
							(startS remberAll: prereq o: pass)
								&
									(ra
										carCdrIn: [ :remove :a | 
											(startS remberAll: remove o: delta)
												&
													(a
														carCdrIn: [ :add :end | end isEmptyo & (add append: delta o: endS) ]) ]) ] ])