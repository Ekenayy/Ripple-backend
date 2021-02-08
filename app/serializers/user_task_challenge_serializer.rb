class UserTaskChallengeSerializer < ActiveModel::Serializer
  attributes :id, :completed, :description
  # has_one :user_challenge
end
