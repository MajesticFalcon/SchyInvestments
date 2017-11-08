class AddUserIdToComps < ActiveRecord::Migration
  def change
    add_column :comps, :user_id, :int
  end
end
