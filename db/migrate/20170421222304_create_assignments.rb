class CreateAssignments < ActiveRecord::Migration[5.0]
  def up
    create_table :assignments do |t|
    	t.column "user_id", :integer
    	t.column "role_id", :integer

      t.timestamps
    end
  end
  def down
  	drop_table :assignments
  end
end
