class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      #t.string :user_id
      #t.string :integer
      #t.string :role_id
      #t.string :integer

      t.integer :user_id
      #t.string :integer
      t.integer :role_id
      #t.string :integer

      t.timestamps
    end
    add_index :assignments, :user_id
    add_index :assignments, :role_id
  end
end
