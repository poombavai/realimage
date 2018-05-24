class DistributorAllocation < ApplicationRecord  
  belongs_to :country
  belongs_to :province
  belongs_to :city
  serialize :distributor_id, Array
end
