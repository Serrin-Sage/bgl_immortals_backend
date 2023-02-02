class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :immortal_house, :level, :merit_array
end
