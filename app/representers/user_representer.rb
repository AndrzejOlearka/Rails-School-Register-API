class UserRepresenter
    def initialize(users)
        @users = users
    end

    def users_as_json()
        users.map do |user|
            {
                id: user.id,
                email: user.email,
                roles: findRoles(user.id)
            }
        end
    end

    def user_as_json()
        return {id: users.id, email: users.email, roles: findRoles(users.id)}
    end

    def findRoles(user_id)
        roles = []
        teacher = Teacher.find_by(user_id: user_id)
        roles.push("teacher" => teacher) if teacher
        student = Student.find_by(user_id: user_id)
        roles.push("student" => student) if student
        parent = Parent.find_by(user_id: user_id)
        roles.push("parent" => parent) if parent
        return roles
    end

    private 

    attr_reader :users
end