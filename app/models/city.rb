class City < ApplicationRecord
  belongs_to :province
  has_many :distributor_allocations
end
