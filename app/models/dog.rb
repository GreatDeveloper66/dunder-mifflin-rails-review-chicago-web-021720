class Dog < ApplicationRecord
  # When dog_id is on the employees table, Active Record will be able to make this work
  # by calling for all employees whose dog_id matches this dog's id.

  # Until then, your iteration attempt in the dog show is not going to work, even though the syntax looks good.
  has_many :employees

end
