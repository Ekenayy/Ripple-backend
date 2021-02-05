class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :challenge_names

end
