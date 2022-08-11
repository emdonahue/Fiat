rules
fireRules: aKB o: outPred
	^ [ :pred | 
		{aKB membero: pred.
		pred match: #(rule _ _) o: [ :head :body |
			{aKB subseto: body.
			outPred === head.
			aKB nembero: outPred}]}].