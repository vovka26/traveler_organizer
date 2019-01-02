class Activity < ActiveRecord::Base
  has_many :activity_places
  has_many :activity_categories
  has_many :places, through: :activity_places
  has_many :categories, through: :activity_categories
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :places
end
