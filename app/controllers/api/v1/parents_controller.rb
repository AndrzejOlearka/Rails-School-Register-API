module Api
    module V1
        class ParentsController < ActionController::API
            def index
                parents = Parent.all
                render json: ParentRepresenter.new(parents).parents_as_json
            end

            def show
                parent = Parent.find(params[:id])
                render json: UserRepresenter.new(parent).user_as_json
            end
        end
    end
end


