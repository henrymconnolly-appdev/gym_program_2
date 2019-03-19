class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :personal_lift_totals

      t.timestamps
    end
  end
end
