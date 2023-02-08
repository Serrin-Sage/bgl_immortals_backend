class Code < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :instructor, optional: true

    validates :number, presence: true, uniqueness: true
end
