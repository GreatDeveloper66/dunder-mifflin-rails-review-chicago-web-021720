class Employee < ApplicationRecord
  has_one :dog
  # Good association setup here. I'd add a couple uniqueness validations for "Dwight's rules" too, per the README.
end
