class RennameRoleColumnInSubscriptions < ActiveRecord::Migration[7.0]
  def change
    rename_column :subscriptions, :role, :status
  end
end
