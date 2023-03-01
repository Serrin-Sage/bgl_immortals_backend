class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :pronoun, :age, :immortal_house, :level, :merit_array, :instructor_id

  belongs_to :user, optional: true

  # def guardian
  #   object.user.try(:name)
  # end
end
