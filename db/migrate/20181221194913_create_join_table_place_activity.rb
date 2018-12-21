class CreateJoinTablePlaceActivity < ActiveRecord::Migration[5.2]
  def change
    create_join_table :places, :activities do |t|
      # t.index [:place_id, :activity_id]
      # t.index [:activity_id, :place_id]
    end
  end
end
