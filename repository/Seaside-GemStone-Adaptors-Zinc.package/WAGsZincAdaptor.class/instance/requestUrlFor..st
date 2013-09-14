as yet unclassified
requestUrlFor: aZincRequest
^ (WAUrl absolute: aZincRequest uri pathAndQueryPrintString)
		decodedWith: self codec.