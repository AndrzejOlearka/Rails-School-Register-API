class Parent < ApplicationRecord
    include Deletable

    belongs_to :user
    has_many :students, :through => :students_parents
end
