class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  validates :acceptation, inclusion: { in: %w[pending accepted refused] }
end
