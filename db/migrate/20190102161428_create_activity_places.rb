class CreateActivityPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_places do |t|
      t.integer :activity_id
      t.integer :place_id
    end
  end
end
