options-generated
cookie: anObject
	"Store the latest selected tab in a cookie. The cookie is then used to determine the initially selected tab if the 'selected' option is not defined. Requires [http://plugins.jquery.com/project/cookie cookie plugin], which can also be found in the development-bundle>external folder from the download builder. The object needs to have key/value pairs of the form the cookie plugin expects as options. Available options (example): &#123; expires: 7, path: '/', domain: 'jquery.com', secure: true &#125;. Since jQuery UI 1.7 it is also possible to define the cookie name being used via 'name' property."

	self optionAt: 'cookie' put: anObject