mant
testInduceGoodCat
	([ :lex | CCGProbabilisticLambdaCalculusParser new parse: #(good cat) asConsR lex: lex model: SKCategorical new top: #S o: #(good cat) asConsR ] asGoal runtime run take: 30) inspect.