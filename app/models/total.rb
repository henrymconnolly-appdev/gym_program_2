class Total < ApplicationRecord
  # Direct associations

  has_one    :breakdown,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
