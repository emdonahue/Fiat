mant
testSayHello
	| y |
	y := ((Yui new
		interpret: #((define lexicon (hello) S (intention (display (hello)))))) trainModel parseSentence: #(hello) asCons) inspect.