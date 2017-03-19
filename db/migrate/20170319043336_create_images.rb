class CreateImages < ActiveRecord::Migration[5.0]
  def up
    create_table :images do |t|
    	t.column "image_url", :string
    	t.column "image_thumb_url", :string
    	t.column "caption", :string
    	t.column "user_id", :integer
    	t.column "category_id", :integer

      t.timestamps
    end
  end

  def down
  	drop_table :images
  end
end
