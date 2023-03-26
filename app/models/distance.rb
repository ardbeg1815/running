class Distance < ApplicationRecord

  validates :month,    numericality: {less_than_or_equal_to: 12}
  validates :date,     numericality: {less_than_or_equal_to: 31}
  validates :distance, numericality: {greater_than: 0}
  validates :weight,   numericality: {greater_than: 0}

end