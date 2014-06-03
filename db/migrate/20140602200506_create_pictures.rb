class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :url
    	t.integer :pictype

      t.timestamps
    end
  end
end
