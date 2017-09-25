class AddUserIdToInvestor < ActiveRecord::Migration
  def change
    add_column :investors, :user_id, :integer
  end
end
