interpreting
testLexSentenceo
	self assert:
		[ :o | ((Yui new knowledgebase: #(
		(lexicon catullus N cat)
		(lexicon catullus N roman)) asConsR) lexSentence: #(catullus catullus) asConsR o: o)] asGoal run first first
		equals: #((N cat) (N cat)) asConsR.