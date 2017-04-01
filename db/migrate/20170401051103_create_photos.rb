class CreatePhotos < ActiveRecord::Migration[5.0]
  def up
    create_table :photos do |t|
    	t.column "user_id", :integer
    	t.column "category_id", :integer
    	t.column "caption", :string

      t.timestamps
    end
  end

  def down
  	drop_table :photos
  end
end
