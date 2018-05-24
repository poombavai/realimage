class AddDistributorIdToDistributorAllocation < ActiveRecord::Migration[5.2]
  def change
    add_column :distributor_allocations, :distributor_id, :string
  end
end
