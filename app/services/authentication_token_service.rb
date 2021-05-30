class AuthenticationTokenService
    HMAC_SECRET = 'mySecretKey'
    ALGORITM_TYPE = 'HS256'

    def self.call(user_id)
        payload = {user_id: user_id}

        JWT.encode payload, HMAC_SECRET, ALGORITM_TYPE 
    end
end