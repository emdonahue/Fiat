as yet unclassified
handleInput
	| text |
	text := (self inputArea text trimBoth findTokens: ' ') collect: #asSymbol.
	text size > 0
		ifTrue: [ 
			world := world act: text.
			self addResponse: (world ) state asString.
			self inputArea text: '' ]