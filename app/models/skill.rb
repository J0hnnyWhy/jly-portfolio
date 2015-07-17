class Skill < ActiveRecord::Base
  has_many :experiences
  validates :name, :presence => true
end