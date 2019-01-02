class Place < ActiveRecord::Base
    has_many :activity_places
    has_many :activities, through: :activity_places
end
