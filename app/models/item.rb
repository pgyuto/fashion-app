class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :color

  validates :text, presence: true
  validates :category_id, :color_id, numericality: { other_than: 1, message: "can't be blank"} 

  belongs_to :user
end
