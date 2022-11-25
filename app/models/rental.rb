class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  validates :acceptation, inclusion: { in: %w[EN-ATTENTE ACCEPTEE REFUSEE] }
end
