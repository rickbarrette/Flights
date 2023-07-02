class Flight < ApplicationRecord
  belongs_to :aircraft

  validates :date, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :oil, presence: true
  validates :fuel, presence: true
  validates :tach, presence: true
  validates :hobbs, presence: true

  after_update :update_aircraft

  scope :thirty_days, -> { where('date >= ?', Time.now - 30.days) }
  scope :month, -> { where('date >= ?', Time.now - 1.month) }
  scope :three_months, -> { where('date >= ?', Time.now - 3.month) }
  scope :year, -> { where('date >= ?', Time.now - 1.year) }
    
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

    (self.tach - self.prev.tach).round(1)
  end

  # Update aircraft times & oil
  def update_aircraft
    t = (tach - prev.tach).round(1)

    # TODO update aircraft TT with increase of tach time
    # TODO update aircraft engine with tach time
    # TODO update oil_change with added oil
    if aircraft.engine.tach < tach
      aircraft.tt = aircraft.tt + t
      aircraft.engine.tach = aircraft.engine.tach
      aircraft.save
    end

    aircraft.engine.oil_change.added = aircraft.engine.oil_change.added + oil
    aircraft.engine.oil_change.save
  end

end
