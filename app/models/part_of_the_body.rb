class PartOfTheBody < ApplicationRecord
  has_many :exercises, dependent: :destroy
  has_many :day_bodies, dependent: :destroy
  has_many :days, through: :day_bodies
  delegate :user, :to => :employee, :allow_nil => true
end
