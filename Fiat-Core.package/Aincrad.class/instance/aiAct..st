acting
aiAct: anAction
	^ self copy
		state: [ :nxt | self act: (ai name cons: anAction) asConsTree from: state to: nxt ] asGoal run first first;
		ai: ai copy.