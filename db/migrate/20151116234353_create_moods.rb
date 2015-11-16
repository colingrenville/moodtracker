class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.integer :rating
      t.text :entry

      t.timestamps null: false
    end
  end
end
