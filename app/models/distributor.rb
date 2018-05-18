class Distributor < ApplicationRecord
  has_closure_tree
  has_many :distributor_allocations
end
