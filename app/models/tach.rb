class Tach < ApplicationRecord
  belongs_to :engine

  validates :start, presence: true
  validates :current, presence: true
  validates :date, presence: true
  
end
