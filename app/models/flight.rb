class Flight < ApplicationRecord
  belongs_to :aircraft

  validates :date, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :oil, presence: true
  validates :fuel, presence: true
  validates :tach, presence: true
  validates :hobbs, presence: true

  # Return a human readbale string
  def to_s
    "#{self.date.to_s} - #{self.from} #{self.to}" 
  end

  # Return the next flight
  def next
    aircraft.flights.where("id > ?", id).first
  end

  # Returns the previous flight
  def prev
    aircraft.flights.where("id < ?", id).last
  end

  # Returns the time for a flight
  def time
    return 0 if self.prev.nil?

    time = (self.hobbs - self.prev.hobbs).round(1) 
    return time unless time <= 0

    "#{(self.tach - self.prev.tach).round(1)} (Tach)"
  end

end
