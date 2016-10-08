class Request < ApplicationRecord
  belongs_to :user_profile
  belongs_to :ngo_profile
end
