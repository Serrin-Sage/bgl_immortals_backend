class User < ApplicationRecord
    has_many :students, dependent: :destroy
    has_one :code
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :parent_code, uniqueness: true
end
