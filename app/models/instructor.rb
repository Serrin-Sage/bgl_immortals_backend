class Instructor < ApplicationRecord
    has_many :students
    has_one :code
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :instructor_code, uniqueness: true
end
