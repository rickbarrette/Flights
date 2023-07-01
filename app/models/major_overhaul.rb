class MajorOverhaul < ApplicationRecord
  belongs_to :engine

  validates :tach, presence: true
  validates :date, presence: true

end
