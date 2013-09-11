class AddQrtoGeocaches < ActiveRecord::Migration
  def up
    add_column :geocaches, :random_code, :string 
    add_column :geocaches, :qr_code, :string
    add_column :geocaches, :notes, :text
  end

  def down
  end
end
