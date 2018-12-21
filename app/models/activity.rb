class Activity < ApplicationRecord
has_many :activity_places
has_many :activity_categories
has_many :places, through: :activity_places
has_many :categories, through: :activity_categories
end
