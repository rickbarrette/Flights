class Vor < ApplicationRecord
  belongs_to :aircraft

  validates :date, presence: true
  validates :location, presence: true
  validates :type, presence: true
  validates :bearing_error_vor_1, presence: true
  validates :bearing_error_vor_2
  validates :pilot, presence: true

  date:date
  location:string
  type:string
  bearing_error_vor_1:intger
  bearing_error_for_2:intger
  pilot:string
end
