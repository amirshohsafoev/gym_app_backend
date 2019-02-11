class PartOfTheBodySerializer < ActiveModel::Serializer
  attributes :id, :body_name, :picture_url
  has_many :exercises
  has_many :user_exercises, include_nested_associations: true
  has_many :day_bodies
end
