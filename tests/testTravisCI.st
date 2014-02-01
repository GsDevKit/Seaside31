  "Explicitly load latest Grease configuration, since we're loading the #bleeding edge"

  Metacello new
    configuration: 'Grease';
    repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
    get.