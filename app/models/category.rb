class Category < ActiveRecord::Base
  has_one_attached :image
  has_many :activity_categories
  has_many :activity_places
  has_many :activities, through: :activity_categories
  has_many :places, through: :activity_places
  accepts_nested_attributes_for :activities

  validates :name, presence: true
  validates :name, uniqueness: true
end
