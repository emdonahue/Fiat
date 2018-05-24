api
initializeWidgets
	chatArea := self instantiate: TextModel.
	self chatArea enabled: false.
	inputArea := self instantiate: TextInputFieldModel.
	self inputArea whenTextIsAccepted: [ self handleInput ].
	self focusOrder add: self inputArea.
	inputArea bindKeyCombination: Character arrowUp toAction: [ self historyUp ].
	inputArea bindKeyCombination: Character arrowDown toAction: [ self historyDown ]