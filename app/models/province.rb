class Province < ApplicationRecord
  belongs_to :country
  has_many :cities
  has_many :distributor_allocations
end
