mant
testLearnCall
	| y c |
		
	c := SKCategorical new .
	([ :lex | CCGProbabilisticLambdaCalculusParser new parse: #(call my cat) asConsR lex: lex model: SKCategorical new top: #S o: #(intention (display (catullus))) asConsR ] asGoal runtime run take: 30) inspect.
	"[ :o | 
	CCGProbabilisticLambdaCalculusParser new 
		parse: #((call my cat) means say (catullus)) asConsR
		lexicon: #(((say) (N / N) (lambda x1 (intention (display (var x1))))) ((means) ((S / N) \ N) (lambda x1 (lambda x2 (parsed (var x1) (var x2)))))) asConsR
		model: SKCategorical new
		top: #S
		o: o
		 ] asGoal run first inspect."