class Engine < ApplicationRecord
  belongs_to :aircraft

  validates :number, presence: true
  validates :tt, presence: true
  validates :start, presence: true
  validates :date, presence: true
  validates :oil_change_interval, presence: true
  validates :tbo, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :serial, presence: true

end
