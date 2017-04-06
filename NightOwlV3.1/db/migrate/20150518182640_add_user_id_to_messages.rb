class AddUserIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_id, :integer
    # add_column :messages, :location, :string
  end
end
