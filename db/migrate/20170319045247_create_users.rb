class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
    	t.column "first_name", :string, :limit => 30
    	t.column "last_name", :string, :limit => 50
    	t.column "email", :string, :default => '', :null => false
    	t.column "username", :string, :limit => 15
    	t.column "password_digest", :string

      t.timestamps
    end
  end

  def down
  	drop_table :users
  end
end
