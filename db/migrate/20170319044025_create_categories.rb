class CreateCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :categories do |t|
    	t.column "category", :string, :limit => 50

      t.timestamps
    end
  end

  def down 
  	drop_table :categories
  end
end
