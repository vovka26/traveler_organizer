class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :city
      t.string :image_url
      t.timestamps
    end
  end
end
