class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :instructor_code, :name, :email, :password_digest, :username, :site
end
