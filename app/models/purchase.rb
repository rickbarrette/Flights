class Purchase < ApplicationRecord
  belongs_to :aircraft

  validates :tt, presence: true
  validates :date, presence: true
  validates :hobbs, presence: true

end
