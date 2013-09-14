tests
testHeaders
	| message cr now |
	cr := String with: Character cr.
	now := (GRPrinter rfc822 print: DateAndTime now).
	message := WAEmailMessage
		from: self philippeMarschall
		to: self seasideDev
		subject: 'new email package'.
	message setStringBody: 'Hello' wrap: false.
	message headerAt: 'Reply-To' put: self philippeMarschall.
	message headerAt: 'Date' put: now.
		
	" We have to take into account, that the header order is not implied."
	self assert: ((
		'From: "Philippe Marschall" <philippe.marschall@gmail.com>', cr,
		'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>',cr ,
		'Subject: new email package', cr,
		'Date: ', now, cr,
		'Reply-To: "Philippe Marschall" <philippe.marschall@gmail.com>', cr, cr,
		'Hello' = message plainMessage) 
	or: [
		'From: "Philippe Marschall" <philippe.marschall@gmail.com>', cr,
		'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>',cr ,
		'Subject: new email package', cr,
		'Reply-To: "Philippe Marschall" <philippe.marschall@gmail.com>', cr,
		'Date: ', now, cr, cr,
		'Hello' = message plainMessage ])