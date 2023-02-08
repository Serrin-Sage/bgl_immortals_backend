class User < ApplicationRecord
    has_many :students
    has_one :code
    has_secure_password
end
