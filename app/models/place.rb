class Place < ActiveRecord::Base
  has_one_attached :image
  has_many :activity_places
  has_many :activity_categories
  has_many :activities, through: :activity_places
  has_many :categories, through: :activity_categories
  accepts_nested_attributes_for :activities

  validates :city, presence: true
  validates :city, uniqueness: true
end
