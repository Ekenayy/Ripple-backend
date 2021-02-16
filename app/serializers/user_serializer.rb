class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :challenge_ids, :picture, :reviewed_challenge_ids

end
