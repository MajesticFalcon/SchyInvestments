class CreateBStrategies < ActiveRecord::Migration
  def change
    create_table :b_strategies do |t|
      t.integer :max_price
      t.integer :target_price
      t.integer :best_price
      t.integer :first_price
      t.integer :max_down_payment
      t.integer :first_down_payment
      t.integer :financed_amount
      t.integer :interest_rate
      t.integer :loan_points
      t.integer :term_limit
      t.integer :payment
      t.integer :cash_flow
      t.string :comments

      t.timestamps null: false
    end
  end
end
