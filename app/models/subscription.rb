class Subscription < ApplicationRecord
  # Direct associations

  has_many   :totals,
             :dependent => :destroy

  belongs_to :feed,
             :counter_cache => true

  # Indirect associations

  # Validations

end
