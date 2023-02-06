class Instructor < ApplicationRecord
    has_many :students
    has_secure_password
end
