class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating

  belongs_to :user
  # belongs_to :challenge

end
