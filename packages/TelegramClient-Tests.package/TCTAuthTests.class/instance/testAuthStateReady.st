testing
testAuthStateReady

	self core loginWithTestData.
	5 seconds wait.
	self
		assert: self core authHandler isAuthorizationStateReady
		description: ['Expected auth state ready but was ' , self core authHandler authState]