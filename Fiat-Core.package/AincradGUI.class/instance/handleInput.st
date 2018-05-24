as yet unclassified
handleInput
	| text |
	text := ((self inputArea text trimBoth findTokens: ' ') collect: #asSymbol) asArray.
	text size > 0
		ifTrue: [ | delta |
			history addLast: (' ' join: text ).
			historyIdx := history size + 1. "New input is always beyond history."
			cmdCache := ''.
			delta := world adminAct: (text copyWithFirst: #player1).
			world := delta world.
			self addResponse: delta actions asString.
			self inputArea text: '' ]