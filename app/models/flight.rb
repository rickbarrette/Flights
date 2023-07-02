class Flight < ApplicationRecord
  belongs_to :aircraft

  validates :date, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :oil, presence: true
  validates :fuel, presence: true
  validates :tach, presence: true
  validates :hobbs, presence: true

  def to_s
    "#{self.date.to_s} - #{self.from} #{self.to}" 
  end
  
end
