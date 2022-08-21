mant
testCall
	| y c |
		
	c := SKCategorical new .
	[ :o | 
	CCGProbabilisticLambdaCalculusParser new 
		parse: #((call my cat) means say (catullus)) asConsR
		lexicon: #(((say) (N / N) (lambda x1 (intention (display (var x1))))) ((means) ((S / N) \ N) (lambda x1 (lambda x2 (parsed (var x1) (var x2)))))) asConsR
		model: SKCategorical new
		top: #S
		o: o
		 ] asGoal run first inspect.