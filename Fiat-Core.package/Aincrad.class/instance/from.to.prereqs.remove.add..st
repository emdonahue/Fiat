rules
from: startS to: endS prereqs: preP remove: remP add: addP
	"replace pass/remberAll with subseto for prereqs"

	<todo>
	| pass delta |
	pass := SKVar new.
	delta := SKVar new.
	^ (startS remberAll: preP asConsTree o: pass)
		& (startS remberAll: remP asConsTree o: delta)
		& (addP asConsTree append: delta o: endS)