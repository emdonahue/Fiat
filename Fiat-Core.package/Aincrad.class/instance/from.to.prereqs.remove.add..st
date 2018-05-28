rules
from: startS to: endS prereqs: preP remove: remP add: addP
	| delta |
	delta := SKVar new.
	^ (startS subseto: preP asConsTree)
		& (startS remberAll: remP asConsTree o: delta)
		& (addP asConsTree append: delta o: endS)