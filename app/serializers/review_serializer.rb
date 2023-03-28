class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :message
  belongs_to :post
end
