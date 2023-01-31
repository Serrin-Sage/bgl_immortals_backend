class UserSerializer < ActiveModel::Serializer
  attributes :id, :parent_code, :name, :email, :password, :username
end
