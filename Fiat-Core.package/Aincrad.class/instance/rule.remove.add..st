as yet unclassified
rule: aRule remove: dList add: aList
	| a get drop move b c |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
	get := aRule === (a cons: #get cons: b cons) & (dList === ((#room cons: c cons: a cons) cons: (#room cons: c cons: b cons) cons))
		& (aList === ((#room cons: c cons: a cons) cons: (#inventory cons: a cons: b cons) cons)).
	drop := aRule === (a cons: #drop cons: b cons) & (dList === ((#inventory cons: a cons: b cons) cons: (#room cons: c cons: a cons) cons))
		& (aList === ((#room cons: c cons: a cons) cons: (#room cons: c cons: b cons) cons)).
	move := aRule === (a cons: #move cons: b cons) & (dList === ((#room cons: c cons: a cons) cons: (#exit cons: c cons: b cons) cons))
		& (aList === ((#exit cons: c cons: b cons) cons: (#room cons: b cons: a cons) cons)).
	^ get | drop | move