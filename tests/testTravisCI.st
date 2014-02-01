"Explicitly load latest Grease configuration, since we're loading the #bleeding edge"
Metacello new
    configuration: 'Grease';
    repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
    get.

"Load the ConfigurationOfSeaside3 as well to make the packageValidityTest work"
Metacello new
    configuration: 'Seaside3';
    repository: 'filetree://${TRAVIS_BUILD_DIR}/repository';
    get.