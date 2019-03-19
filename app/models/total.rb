class Total < ApplicationRecord
  # Direct associations

  belongs_to :feed,
             :required => false

  has_one    :breakdown,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
