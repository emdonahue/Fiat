listening
testSayNevermind
	self assert: (yui goalFromUtterance: #(nevermind) in: world) equals: (Cons empty cons) 