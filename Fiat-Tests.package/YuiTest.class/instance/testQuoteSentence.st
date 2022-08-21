mant
testQuoteSentence
	
"	[ :o :l| CCGProbabilisticLambdaCalculusParser new lexSentence: #(catullus) asConsR 
	lexicon: #(((catullus) N catullus)) asConsR 
	model: SKCategorical new o: o ] asGoal run first inspect."

	[ :o | CCGProbabilisticLambdaCalculusParser new lexSentence: #(catullus (is good)) asConsR 
	lexicon: #(((catullus) N catullus)) asConsR
	model: SKCategorical new o: o ] asGoal run force inspect.