module Api
    module V1
        class AuthenticationController < ActionController::API
            class AuthenticationError < StandardError; end

            rescue_from ActionController::ParameterMissing, with: :parameter_missing
            rescue_from AuthenticationError, with: :handle_unauthenticated
            
            def create
                 raise AuthenticationError unless user.authenticate(params.require(:password))
                 token = AuthenticationTokenService.call(user.id)
                 render json: {token: token}, status: :created
            end
    
            private

            # a ||= b is a conditional assignment operator. It means if a is undefined or false, 
            # then evaluate b and set a to the result. Equivalently, if a is defined and evaluates to truthy,
            # then b is not evaluated, and no assignment takes place.

            def user
                @user ||= User.find_by(username: params.require(:username))
            end

            def parameter_missing(e)
                render json: {error: e.message}, status: :unprocessable_entity
            end

            def handle_unauthenticated
                head :unauthorized
            end
        end
    end
end


