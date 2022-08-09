interpreting
testUtterance
	self assert:
		((Yui new kb: #(
		(lexicon catullus N catullus)
		(lexicon cat N cat)
		(lexicon is_a ((belief / N) \ N) is_a)) asConsR) interpretEvent: #(evan says (catullus is_a cat)) asConsR)
		equals: #((belief (mental (evan (want (belief ((is_a catullus) cat))))))) asConsR.