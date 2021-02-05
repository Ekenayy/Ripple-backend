class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :video_url, :photo_url
  has_one :user
  has_many :task_challenges
end
