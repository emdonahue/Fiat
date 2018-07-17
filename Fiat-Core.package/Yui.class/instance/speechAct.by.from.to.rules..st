planning
speechAct: anAction by: anActor from: startS to: endS rules: theRules
	"currently throws away negative goals from utterance analyzer."
	| plan g |
	plan := SKVar tag: #playerPlan.
	g := SKVar tag: #playerGoal.
	^ anAction
		car: #say
		cdrIn: [ :utt | 
			(self say: utt speaker: anActor addressee: #player1 goal: g cons in: theRules)
				& (self primitivePlan: plan actor: #player1 state: startS end: endS goal: g rules: theRules) ].