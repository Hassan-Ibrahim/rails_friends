class AddUserIdToFriens < ActiveRecord::Migration[6.1]
  def change
    add_column :friens, :user_id, :integer
    add_index :friens, :user_id
  end
end
