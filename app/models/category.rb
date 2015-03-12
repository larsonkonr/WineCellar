class Category < ActiveRecord::Base
  belongs_to :user
  has_many :category_items
  has_many :items, through: :category_items
end
