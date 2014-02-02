baselines-3101
baseline3101gemstone: spec

	spec for: #'gs3.x' do: [
		spec
			baseline:'Seaside3' with: [ spec  repository: 'github://glassdb/Seaside31:gemstone3.1/repository' ];
			import: 'Seaside3']