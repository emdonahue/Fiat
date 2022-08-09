interpreting
addEvent: anEvent
	^ self copy kb: (knowledgebase add: (#event cons: timestamp + 1 cons: anEvent asConsR)); timestamp: timestamp + 1.