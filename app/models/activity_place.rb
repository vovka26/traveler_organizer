class ActivityPlace < ActiveRecord::Base
  belongs_to :activity
  belongs_to :place
end
