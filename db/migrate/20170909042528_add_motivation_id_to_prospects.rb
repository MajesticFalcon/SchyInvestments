class AddMotivationIdToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :motivation_id, :integer
  end
end
