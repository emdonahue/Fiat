as yet unclassified
rule: aRule remove: dList add: aList
	| foxdie rabbitmultiply omnomnom foxhungry a b foxmultiply |
	a := SKVar new.
	b := SKVar new.
	foxdie := aRule === #foxdie & (dList === (#fox cons: #hungry cons) cons) & (aList === Cons empty).
	rabbitmultiply := aRule === #rabbitmultiply & (dList === (#rabbit cons: #rabbit cons)) & (aList === (#rabbit cons: #rabbit cons: #rabbit cons: #rabbit cons)).
	omnomnom := aRule === #omnomnom & (dList === #(#(fox hungry) rabbit) asConsTree) & (aList === (#fox cons: #sated cons) cons).
	foxhungry := aRule === #foxhungry & (dList === #(#(fox sated)) asConsTree) & (aList === (#fox cons: #hungry cons) cons).
	foxmultiply := aRule === #foxmultiply & (dList === ((#fox cons: a cons) cons: (#fox cons: b cons) cons))
		& (aList === ((#fox cons: #hungry cons) cons: (#fox cons: a cons) cons: (#fox cons: b cons) cons)).
	^ foxdie | rabbitmultiply | omnomnom | foxhungry | foxmultiply