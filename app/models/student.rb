class Student < ApplicationRecord
    include Deletable

    belongs_to :user
end
