class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :video_url, :photo_url, :genre, :my_challenge_takers
  has_one :user
  has_many :task_challenges
  has_many :reviews
  
end
