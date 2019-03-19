class Profile < ApplicationRecord
  # Direct associations

  has_many   :totals,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
