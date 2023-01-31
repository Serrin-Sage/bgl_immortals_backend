class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :instructor_code, :name, :email, :password, :username, :site
end
