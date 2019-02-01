class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :picture_url, :email, :age, :weight, :height
end
