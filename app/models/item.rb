class Item < ApplicationRecord
  with_options presence: true do
    validates :text
    validates :category_id
    validates :color_id
  end


  belongs_to :user
end
