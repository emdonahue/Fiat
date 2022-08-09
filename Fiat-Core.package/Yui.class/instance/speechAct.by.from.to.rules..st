DEP-planning
speechAct: anAction by: anActor from: startS to: endS rules: theRules
	"currently throws away negative goals from utterance analyzer."

	| plan g endWorld |
	plan := SKVar tag: #playerPlan.
	g := SKVar tag: #playerGoal.
	endWorld := SKVar tag: #endWorld.
	^ startS
		carCdrIn: [ :worldS :kbS | 
			anAction
				car: #say
				cdrIn: [ :utt | 
					(self say: utt speaker: anActor addressee: #player1 goal: g cons in: theRules) 
						& (self primitivePlan: plan actor: #player1 state: worldS end: endWorld goal: g rules: theRules) & (endS === (endWorld cons: kbS)) ] ].