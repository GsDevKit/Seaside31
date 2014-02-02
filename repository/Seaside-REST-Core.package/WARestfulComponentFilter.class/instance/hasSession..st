private
hasSession: aRequestContext
	"we assume that a session id implies a session, this will not be true for expired sessions"
	^ (self handler trackingStrategy keyFromContext: aRequestContext) notNil