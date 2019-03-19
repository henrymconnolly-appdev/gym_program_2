class CreateTotals < ActiveRecord::Migration[5.1]
  def change
    create_table :totals do |t|
      t.integer :profile_id
      t.integer :feed_id
      t.string :lift_total
      t.date :lift_date
      t.integer :subscription_id

      t.timestamps
    end
  end
end
