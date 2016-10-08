class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :requests
end
