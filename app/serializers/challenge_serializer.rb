class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :video_url, :photo_url
  has_one :user
end
