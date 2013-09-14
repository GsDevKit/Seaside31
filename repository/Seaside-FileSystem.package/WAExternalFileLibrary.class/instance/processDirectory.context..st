handling
processDirectory: aString context: aRequestContext 
	| contents |
	contents := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :html | html title: aRequestContext request url greaseString ];
		render: [ :html | 
			html heading
				level: 1;
				with: aRequestContext request url pathString.
			html unorderedList:  [
				self 
					filesIn: aString
					do: [ :each | 
						html listItem: [
							html anchor
								url: (self 
									asAbsoluteUrl: each
									relativeTo: aRequestContext request);
								with: each ] ] ] ].
	aRequestContext respond: [ :response | 
		response
			contentType: WAMimeType textHtml;
			nextPutAll: contents ]