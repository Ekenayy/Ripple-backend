class TaskChallengeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :challenge
  has_one :task
end
