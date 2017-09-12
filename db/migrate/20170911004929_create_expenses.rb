class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.integer :value
      t.boolean :upfront
      t.integer :frequency

      t.timestamps null: false
    end
  end
end
