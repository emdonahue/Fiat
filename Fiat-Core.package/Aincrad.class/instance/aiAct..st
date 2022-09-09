acting
aiAct: anAction
	^ self copy
		state: [ :nxt | self act: (ai name cons: anAction) asConsTree from: state to: nxt ] asGoal runList first first;
		ai: ai copy.