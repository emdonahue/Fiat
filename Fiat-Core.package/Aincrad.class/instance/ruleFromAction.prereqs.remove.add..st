rules
ruleFromAction: anAction prereqs: somePrereqs remove: someRemovals add: someAdditions
	^ anAction asConsTree cons: somePrereqs asConsTree cons: someRemovals asConsTree cons: someAdditions asConsTree  cons