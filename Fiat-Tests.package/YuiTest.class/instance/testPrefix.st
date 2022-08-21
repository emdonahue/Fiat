mant
testPrefix
	[ :p :s | CCGProbabilisticLambdaCalculusParser new sentence: #(catullus is a good cat) asCons prefix: p suffix: s ] asGoal run force inspect.