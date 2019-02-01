class User < ApplicationRecord
  has_many :user_exercises, dependent: :destroy
  has_many :exercises, through: :user_exercises
  has_many :schedules, dependent: :destroy
  has_many :days, through: :schedules

end
