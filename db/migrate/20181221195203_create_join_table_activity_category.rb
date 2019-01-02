class CreateJoinTableActivityCategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :activities, :categories do |t|
      t.index [:activity_id, :category_id]
      t.index [:category_id, :activity_id]
    end
  end
end
