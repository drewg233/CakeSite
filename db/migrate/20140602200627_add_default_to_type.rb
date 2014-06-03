class AddDefaultToType < ActiveRecord::Migration
  def change
  	change_column :pictures, :pictype, :integer, :default => 1
  end
end
