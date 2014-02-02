release
releaseSeaside30
	{
		ConfigurationOfPierAddOns2. 
		ConfigurationOfPier2. 
		ConfigurationOfMagritte2. 
		ConfigurationOfGrease. 
		ConfigurationOfSeaside30. 
		ConfigurationOfKomHttpServer.
	}
		do: [:cl | 
			(cl respondsTo: #releaseToSqueakSource)
				ifTrue: [cl releaseToSqueakSource].
			(cl respondsTo: #releaseToGemSource)
				ifTrue: [cl releaseToGemSource]]