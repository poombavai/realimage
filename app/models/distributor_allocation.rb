class DistributorAllocation < ApplicationRecord
  belongs_to :distributor
  belongs_to :country
  belongs_to :province
  belongs_to :city
end
