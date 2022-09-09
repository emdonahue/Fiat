tests
testHistoryWhyEarlier
	| w |
	w := (world state remove: #(room room1 sword1) asCons) add: #(inventory yui sword1) asCons.
	self
		assert:
			[ :action | yui why: #(inventory yui sword1) asCons action: action history: ((#(yui say get sword) asCons cons: w) cons: (#(yui get sword1) asCons cons: w) cons: (#initialState cons: world state) cons) ]
				asGoal runList first first
		equals: #(yui get sword1) asCons.