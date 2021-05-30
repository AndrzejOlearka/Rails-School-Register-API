module Api
    module V1
        class UsersController < ActionController::API
            def index
                users = User.all
                render json: UserRepresenter.new(users).users_as_json
            end

            def show
                user = User.find(params[:id])
                render json: UserRepresenter.new(user).user_as_json
            end
        end
    end
end


