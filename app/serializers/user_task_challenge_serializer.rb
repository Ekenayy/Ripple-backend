class UserTaskChallengeSerializer < ActiveModel::Serializer
  attributes :id, :completed
  has_one :user_challenge
end
