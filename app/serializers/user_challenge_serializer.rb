class UserChallengeSerializer < ActiveModel::Serializer
  attributes :id, :completed
  has_one :user
  has_one :challenge
end
