class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.integer :user_id
      t.integer :subscribed_lift_totals
      t.string :subscribed_lift_dates
      t.string :subscribed_lift_username

      t.timestamps
    end
  end
end
