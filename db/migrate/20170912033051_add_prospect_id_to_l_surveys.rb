class AddProspectIdToLSurveys < ActiveRecord::Migration
  def change
    add_column :l_surveys, :prospect_id, :integer
  end
end
