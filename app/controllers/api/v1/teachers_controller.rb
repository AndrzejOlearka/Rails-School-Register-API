module Api
    module V1
        class TeachersController < ActionController::API
            def index
                teachers = Teacher.all
                render json: TeacherRepresenter.new(teachers).teachers_as_json
            end

            def show
                teacher = Teacher.find(params[:id])
                render json: UserRepresenter.new(teacher).user_as_json
            end
        end
    end
end


