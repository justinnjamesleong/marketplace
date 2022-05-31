class Item < ApplicationRecord
  belongs_to :franchise
  belongs_to :item_type
  belongs_to :creator, class_name: "User"
  belongs_to :owner, class_name: "User"
  has_one :review
end
