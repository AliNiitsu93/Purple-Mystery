class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :description
      t.string :location
      t.timestamps null: false
    end
  end
end
