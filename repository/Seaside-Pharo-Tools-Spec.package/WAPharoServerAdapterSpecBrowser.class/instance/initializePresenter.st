initialization
initializePresenter

	self initializeAdaptors.
	
	listModel 
		whenSelectedItemChanged: [ :selection | adaptor := selection. self updateUIState];
		whenListChanged: [ self updateUIState]