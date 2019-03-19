class Total < ApplicationRecord
  # Direct associations

  belongs_to :subscription,
             :required => false

  belongs_to :profile,
             :counter_cache => true

  belongs_to :feed,
             :required => false

  has_one    :breakdown,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
