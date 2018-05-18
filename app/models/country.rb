class Country < ApplicationRecord
  has_many :provinces
  has_many :distributor_allocations
end
