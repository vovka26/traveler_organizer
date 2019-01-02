class Category < ActiveRecord::Base
  has_many :activity_categories
  has_many :activity_places
  has_many :activities, through: :activity_categories
  has_many :places, through: :activity_places
end
