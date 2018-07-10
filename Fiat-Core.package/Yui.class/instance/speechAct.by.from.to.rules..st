planning
speechAct: anAction by: anActor from: startS to: endS rules: theRules
	| plan |
	plan := SKVar tag: #playerPlan.
	^ anAction === #(say go room2) asConsTree & (self primitivePlan: plan actor: #player1 state: startS end: endS goal: #(room room2 player1) asConsTree cons rules: theRules).

	"(endS === (#(room room2 player1) asConsTree cons: startS))."