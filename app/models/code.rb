class Code < ApplicationRecord
    belongs_to :user, optional: true, dependent: :destroy
    belongs_to :instructor, optional: true, dependent: :destroy

    validates :number, presence: true, uniqueness: true
end
