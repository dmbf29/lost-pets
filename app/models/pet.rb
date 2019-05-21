class Pet < ApplicationRecord
  SPECIES = %w(cat dog turtle rabbit parrot horse)
  validates :name, presence: true
  validates :address, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    # return an integer
    (Date.today - date).to_i
  end
end
