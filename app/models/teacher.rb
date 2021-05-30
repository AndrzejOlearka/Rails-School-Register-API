class Teacher < ApplicationRecord
    include Deletable
    belongs_to :user
end
