class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at
  has_many :reviews
end
