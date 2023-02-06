class UserSerializer < ActiveModel::Serializer
  attributes :id, :parent_code, :name, :email, :password_digest, :username
end
