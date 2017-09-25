class AddUserIdToMotivations < ActiveRecord::Migration
  def change
    add_column :motivations, :user_id, :integer
  end
end
