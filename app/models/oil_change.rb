class OilChange < ApplicationRecord
  belongs_to :engine

  validates :tach, presence: true
  validates :date, presence: true
  validates :amount, presence: true
  validates :added, presence: true

end
