rules
fireRules
	| preds kb |
	kb := knowledgebase.
	[ preds := [ :pred | self fireRules: kb o: pred ] asGoal run.
	preds isNotEmpty ] whileTrue: [ kb := kb append: (preds collect: #first) ].
	^ self copy knowledgebase: kb.