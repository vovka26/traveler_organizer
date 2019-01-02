class Category < ActiveRecord::Base
  has_many :activity_categories
  has_many :activity_places
  has_many :activities, through: :activity_categories
  has_many :places, through: :activity_places
  accepts_nested_attributes_for :activities
  accepts_nested_attributes_for :places
end
