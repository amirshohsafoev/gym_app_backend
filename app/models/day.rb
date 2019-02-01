class Day < ApplicationRecord
  has_many :day_bodies, dependent: :destroy
  has_many :schedules, dependent: :destroy
  has_many :users, through: :schedules
end
