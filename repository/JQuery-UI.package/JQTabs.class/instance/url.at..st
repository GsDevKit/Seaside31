actions
url: aUrl at: anInteger
	"Change the url from which an Ajax (remote) tab will be loaded. The specified URL will be used for subsequent loads. Note that you can not only change the URL for an existing remote tab with this method, but also turn an in-page tab into a remote tab.  The second argument is the zero-based index of the tab of which its URL is to be updated.  The third is a URL the content of the tab is loaded from."
	
	self action: 'url' arguments: (Array with: anInteger with: aUrl)