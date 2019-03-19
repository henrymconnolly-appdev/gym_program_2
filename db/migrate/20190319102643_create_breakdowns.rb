class CreateBreakdowns < ActiveRecord::Migration[5.1]
  def change
    create_table :breakdowns do |t|
      t.integer :total_id
      t.integer :squat
      t.integer :benchpress
      t.integer :deadlift
      t.string :explained_lift_total

      t.timestamps
    end
  end
end
