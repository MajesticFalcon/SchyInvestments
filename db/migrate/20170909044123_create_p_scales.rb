class CreatePScales < ActiveRecord::Migration
  def change
    create_table :p_scales do |t|
      t.string :name
      t.integer :value

      t.timestamps null: false
    end
  end
end
