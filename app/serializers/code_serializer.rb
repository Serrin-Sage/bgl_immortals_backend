class CodeSerializer < ActiveModel::Serializer
  attributes :id, :number, :instructor_id, :user_id
end
