class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :color

  
  with_options presence: true do
    validates :text
    validates :category_id
    validates :color_id
  end


  belongs_to :user
end
