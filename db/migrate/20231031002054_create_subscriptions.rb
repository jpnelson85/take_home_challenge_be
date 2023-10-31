class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.float :price_dollars
      t.integer :frequency_by_months
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
