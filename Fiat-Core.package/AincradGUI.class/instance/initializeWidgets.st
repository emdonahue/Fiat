api
initializeWidgets
	chatArea := self instantiate: TextModel.
	self chatArea enabled: false.
	inputArea := self instantiate: TextInputFieldModel.
	self inputArea whenTextIsAccepted: [ self handleInput ].
	self focusOrder add: self inputArea 