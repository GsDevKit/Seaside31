baselines-31
baseline310jqueryui: spec

	spec for: #'common' do: [
		spec blessing: #baseline.
		spec 
			package: 'JQuery-UI' with: [
				spec requires: #('JQuery-Core' ) ];
			package: 'JQuery-Tests-UI' with: [
				spec requires: #('JQuery-UI' 'JQuery-Tests-Core' ) ].
		spec 
			group: 'JQueryUI' with: #('JQuery-UI');
			group: 'JQueryUI Tests' with: #('JQuery-Tests-UI' );
			group: 'JQueryUI Examples' with: #('JQuery-Tests-UI' );
			group: 'Tests' with: #( 'JQueryUI Tests' ) ].
		
	spec for: #'gemstone' do: [
		spec repository: 'http://seaside.gemtalksystems.com/ss/Seaside30'.
		spec 
			package: 'JQuery-UI' with: 'JQuery-UI.gemstone' ].