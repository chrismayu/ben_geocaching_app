class CreateGeocaches < ActiveRecord::Migration
  def change
  
    
    create_table :geocaches do |t|
      t.string :name
      t.float :lat
      t.float :lad
      t.boolean :receive_email
      t.string :cache_name
      t.string :image
      t.string :email
      t.integer :user_id
      t.date :hide
      t.integer :found

      t.timestamps
    end
  end
end
