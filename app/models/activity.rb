class Activity < ActiveRecord::Base
  has_one_attached :image
  has_many :activity_places
  has_many :activity_categories
  has_many :places, through: :activity_places
  has_many :categories, through: :activity_categories
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :places

  validates :name, uniqueness: true
  validates_presence_of :name, :image


  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def places_attributes=(place_attributes)
    place_attributes.values.each do |place_attribute|
      place = Place.find_or_create_by(place_attribute)
      self.places << place
    end
  end
end
