mant
parseSentence: aSent
	^ [ :o | CCGProbabilisticLambdaCalculusParser new parse: aSent asConsR lexicon: (model logProbabilities keys asCons) model: model top: #S o: o ] asGoal run first