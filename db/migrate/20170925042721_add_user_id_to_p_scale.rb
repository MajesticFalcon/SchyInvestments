class AddUserIdToPScale < ActiveRecord::Migration
  def change
    add_column :p_scales, :user_id, :integer
  end
end
