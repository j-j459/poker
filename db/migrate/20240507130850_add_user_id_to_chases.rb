class AddUserIdToChases < ActiveRecord::Migration[6.1]
  def change
    add_column :chases, :user_id, :integer
  end
end
