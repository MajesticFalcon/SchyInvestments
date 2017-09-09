class AddLSurvIdToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :l_surv_ID, :integer
  end
end
