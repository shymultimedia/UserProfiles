class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.integer :user_id
      t.string :title
      t.string :schedule_type

      t.timestamps
    end
#    add_index :users, :user_id
    add_index :occupations, :user_id
  end
end
