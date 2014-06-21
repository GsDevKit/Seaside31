initialization
initializeWidgets

	self instantiateModels: #(
		listModel NewListModel
		textModel TextModel
		toolbarModel WAServerAdapterToolbar).
	
	self focusOrder
		add: listModel;
		add: toolbarModel;
		add: textModel.
	
	textModel aboutToStyle: false.
	listModel displayBlock: [ :item | item class name,' ',item statusString ].
	listModel menu: [ :aMenu | self adaptorsMenu: aMenu].
	
	self disableAllButtons