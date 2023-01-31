class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :guardian, :immortal_house, :level, :merit_array
end
