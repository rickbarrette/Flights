class Hobb < ApplicationRecord
  belongs_to :aircraft

  validates :tt, presence: true
  validates :start, presence: true
  validates :date, presence: true
  validates :current, presence: true
  
end
