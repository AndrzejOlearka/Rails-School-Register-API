class TeacherRepresenter
    include UserProvider

    def initialize(teachers)
        @teachers = teachers
    end

    def teachers_as_json()
        teachers.map do |teacher|
            {
                id: teacher.id,
                firstname: teacher.firstname,
                lastname: teacher.lastname,
                sex: teacher.sex,
                user: get_user(teacher.user)
            }
        end
    end

    private 

    attr_reader :teachers
end
