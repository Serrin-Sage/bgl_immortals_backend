class Student < ApplicationRecord
    belongs_to :instructor
    belongs_to :user, optional: true

    validates :name, presence: true
    validates :age, presence: true
end
