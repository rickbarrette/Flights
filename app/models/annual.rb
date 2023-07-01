class Annual < ApplicationRecord
  belongs_to :aircraft
  
  validates :tt, presence: true
  validates :date, presence: true

end
