as yet unclassified
step: anAction from: startS to: endS
	^ [ :add :rmv :delta | (self rule: anAction asConsTree remove: rmv add: add) & (startS remberAll: rmv o: delta) & (add append: delta o: endS) ] asGoal