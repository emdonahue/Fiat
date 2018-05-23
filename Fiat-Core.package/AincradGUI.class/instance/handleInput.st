as yet unclassified
handleInput
	| text |
	text := ((self inputArea text trimBoth findTokens: ' ') collect: #asSymbol) asArray.
	text size > 0
		ifTrue: [ | delta |
			delta := world adminAct: (text copyWithFirst: #player1).
			world := delta world.
			self addResponse: delta actions asString.
			self inputArea text: '' ]