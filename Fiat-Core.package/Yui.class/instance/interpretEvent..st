interpreting
interpretEvent: anEvent
	^ [ :speechact |
		anEvent match: #(_ says _) o: [ :person :utterance :lex :acttype :parse |
			{self lexSentence: utterance o: lex.
			CCGLambdaCalculusParser new parse: lex top: acttype o: parse.
			speechact === {#belief. {#mental. {person. {#want. acttype cons: parse cons}}}} asConsR}]] asGoal run first.