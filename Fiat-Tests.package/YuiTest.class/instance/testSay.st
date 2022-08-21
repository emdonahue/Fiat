mant
testSay
	| y |
	y := ((Yui new
		interpret: #((define lexicon (say) (S / N) (lambda x1 (intention (display (var x1))))))) asConsR trainModel parseSentence: #(say (hello)) asConsR) inspect.
		
		
"	[ :o | 
	CCGProbabilisticLambdaCalculusParser new parse: #(say (hello)) asConsR
		lexicon: #(((hello) N (hello)) ((say) (S / N) (lambda x1 (intention (display (var x1)))))) asConsR
		model: SKCategorical new
		top: #S
		o: o
		 ] asGoal run first inspect."
	