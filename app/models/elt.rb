class Elt < ApplicationRecord
  belongs_to :aircraft

  validates :tt, presence: true
  validates :date, presence: true
  validates :inspected, presence: true
  validates :inspected_tach, presence: true
  validates :serial, presence: true
end
