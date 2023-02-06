class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :immortal_house, :level, :merit_array

  belongs_to :user, optional: true

  # def guardian
  #   object.user.try(:name)
  # end
end
