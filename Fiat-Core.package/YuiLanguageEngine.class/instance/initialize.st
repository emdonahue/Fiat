initialization
initialize
	| getV |
	super initialize.
	lexicon := Dictionary new.
	lexicon at: #sword1 put: (#N cons: #sword1).
	lexicon at: #shield2 put: (#N cons: #shield2).
	getV := SKVar new.
	lexicon at: #get put: ((#N cons: #/ cons: (#N cons: getV) cons) cons: (#get cons: getV cons)).