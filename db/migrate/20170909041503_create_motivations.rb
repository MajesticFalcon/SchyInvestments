class CreateMotivations < ActiveRecord::Migration
  def change
    create_table :motivations do |t|
      t.string :name
      t.integer :value

      t.timestamps null: false
    end
  end
end
