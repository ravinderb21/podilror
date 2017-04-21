class CreateRoles < ActiveRecord::Migration[5.0]
  def up
    create_table :roles do |t|
    	t.column "role", :string

      t.timestamps
    end
  end
  def down
  	drop_table :roles
  end
end
