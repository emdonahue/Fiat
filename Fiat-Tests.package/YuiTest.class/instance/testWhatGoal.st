questioning
testWhatGoal
	self assert: (yui goalFromUtterance: #(what sword1) asCons in: world) equals: (Cons empty cons: (#type cons: #sword1 cons: #item cons) cons).