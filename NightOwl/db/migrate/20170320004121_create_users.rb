class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string "firstName", :limit => 40
      t.string "lastName", :limit => 40

      t.timestamps
    end
  end
  
  
  def down
  end
  
end
