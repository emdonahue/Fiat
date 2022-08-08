environment
addEvent: anEvent
	^ self copy kb: (kb add: (#event cons: timestamp + 1 cons: anEvent asConsR)); timestamp: timestamp + 1.