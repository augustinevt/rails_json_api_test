class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :user_profile
  belongs_to :ngo_profile
end
