class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  #t.integer :user_id #added to stop error - S.B., 04-04-16
      t.string :name
      t.text :bio
      t.integer :age

      t.timestamps
    end
  end
end
