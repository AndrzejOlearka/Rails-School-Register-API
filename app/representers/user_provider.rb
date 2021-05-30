module UserProvider 
    def get_user(user)
        return {:id => user.id, email: user.email} if user
    end
end