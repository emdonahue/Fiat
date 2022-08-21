mant
testMeans
	| y |
"	y := ((Yui new
		interpret: #((define lexicon (means) ((S / N) \ N) (lambda x1 (lambda x3 (parse (var x1) test)))))) asConsR trainModel parseSentence: #((catullus) means (cat)) asConsR) inspect."
		
	
	[ :o :t | 
	CCGProbabilisticLambdaCalculusParser new parse: #(means hello hello) asConsR
		lexicon: #(((hello) N (hello)) ((means) ((S / N) / N) (lambda x1 (lambda x2 (parsed (var x1) (var x2)))))) asConsR
		"lexicon: #(((hello) N (hello)) ((means) (S / N) (lambda x2 (parsed hello (var x2))))) asConsR"
		model: SKCategorical new
		top: t
		o: o
		 ] asGoal run first inspect.
		"
	[ :o | 
	CCGProbabilisticLambdaCalculusParser new parse: #(means hello) asConsR
		lexicon: #(((hello) N (hello)) ((means) ((S / N) / N) (lambda x1 (lambda x2 (parsed (var x1) (var x2)))))) asConsR
		model: SKCategorical new
		top: #S
		o: o
		 ] asGoal run first inspect.
	"