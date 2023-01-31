class MeritSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :color, :category
end
