interpreting
testLexWordo
	self assert:
		[ :o | ((Yui new kb: #(
		(lexicon catullus N cat)
		(lexicon catullus N roman)) asConsR) lexWord: #catullus o: o)] asGoal run
		equals: #(((N cat)) ((N roman))) asConsR.