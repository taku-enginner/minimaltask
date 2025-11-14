class AddStatusToPlans < ActiveRecord::Migration[8.1]
  def change
    add_column :plans, :status, :integer, default: 0
  end
end
