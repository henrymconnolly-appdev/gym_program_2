class Subscription < ApplicationRecord
  # Direct associations

  belongs_to :feed,
             :counter_cache => true

  # Indirect associations

  # Validations

end
