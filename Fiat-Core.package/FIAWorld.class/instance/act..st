as yet unclassified
act: anAction
	<todo>
	^ [ :nxt | self step: anAction from: state to: nxt ] asGoal
		run ifEmpty: self ifNotEmpty: [ :suc | self class new state: suc first first	"This should only need one first" ]