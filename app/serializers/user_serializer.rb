class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :location
end
