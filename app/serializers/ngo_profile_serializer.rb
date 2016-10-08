class NgoProfileSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :requests
end
