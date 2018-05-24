class RemoveDistributorFromDistributorAllocation < ActiveRecord::Migration[5.2]
  def change
    remove_reference :distributor_allocations, :distributor, foreign_key: true
  end
end
