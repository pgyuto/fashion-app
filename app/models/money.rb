class Money < ApplicationRecord
  validates :balance, presence: true
  validates :balance, numericality: { only_integer: true, message: 'を半角数字のみで入力してください' }
  validates :balance, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999_999,
    message: 'を¥300〜9,999,999で入力してください' }
  
  belongs_to :user
end
