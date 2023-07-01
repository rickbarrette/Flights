class Aircraft < ApplicationRecord
  has_many :engines, dependent: :destroy
  has_many :flights, dependent: :destroy
  has_one :annunal, dependent: :destroy
  has_one :hundred_hour, dependent: :destroy
  has_one :hobbs, dependent: :destroy
  has_one :elt, dependent: :destroy
  has_one :vor, dependent: :destroy
  has_one :pitot, dependent: :destroy
  has_one :purchase, dependent: :destroy

  validates :tail, presence: true
  validates :year, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :serial, presence: true
  validates :tt, presence: true

end
