module Api
    module V1
        class StudentsController < ActionController::API
            def index
                students = Student.all
                render json: StudentRepresenter.new(students).students_as_json
            end

            def show
                student = Student.find(params[:id])
                render json: UserRepresenter.new(student).student_as_json
            end
        end
    end
end


