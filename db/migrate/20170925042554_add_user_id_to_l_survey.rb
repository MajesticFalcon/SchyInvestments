class AddUserIdToLSurvey < ActiveRecord::Migration
  def change
    add_column :l_surveys, :user_id, :integer
  end
end
