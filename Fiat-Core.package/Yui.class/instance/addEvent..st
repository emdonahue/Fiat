interpreting
addEvent: anEvent
	^ self copy knowledgebase: (knowledgebase add: (#event cons: timestamp + 1 cons: anEvent asConsR)); timestamp: timestamp + 1.