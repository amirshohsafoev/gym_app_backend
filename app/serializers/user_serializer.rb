class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :picture_url, :email, :age, :weight, :height
  has_many :user_exercises
  has_many :exercises
  has_many :part_of_the_bodies
end
