class Feed < ApplicationRecord
  # Direct associations

  has_many   :subscriptions,
             :dependent => :destroy

  has_many   :totals,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
