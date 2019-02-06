class User < ApplicationRecord
  has_many :user_exercises, dependent: :destroy
  has_many :exercises, through: :user_exercises
  has_many :schedules, dependent: :destroy
  has_many :days, through: :schedules
  has_many :part_of_the_bodies, through: :exercises
  has_secure_password
  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :first_name, :last_name, :email, :password_digest, uniqueness: true
  validates :age, :weight, numericality: { only_integer: true }
  validates_format_of :email, :with => /@/

end
