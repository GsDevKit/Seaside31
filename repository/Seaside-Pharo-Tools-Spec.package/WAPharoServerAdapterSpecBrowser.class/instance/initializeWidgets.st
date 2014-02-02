initialization
initializeWidgets

	self instantiateModels: #(
		listModel IconListModel
		textModel TextModel
		toolbarModel WAServerAdapterToolbar).
	
	self focusOrder
		add: listModel;
		add: toolbarModel;
		add: textModel.
	
	textModel aboutToStyle: false.
	listModel displayBlock: [ :item | item name].
	self disableAllButtons