class Distance < ApplicationRecord

  validates :month,    numericality: {less_than_or_equal_to: 12, message: ": 半角数字1〜12を入力してください"}
  validates :date,     numericality: {less_than_or_equal_to: 31, message: ": 半角数字1〜31を入力してください"}
  validates :distance, numericality: {greater_than: 0, message: ": 半角数字で入力してください"}
  validates :weight,   numericality: {greater_than: 0, message: ": 半角数字で入力してください"}

end