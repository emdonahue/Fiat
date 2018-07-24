questioning
testWhatPlan
	self assert: ((yui processUtterance: #(what sword1) asCons in: world) plan: world) equals: #(#(say sword1 is item)) asConsTree.