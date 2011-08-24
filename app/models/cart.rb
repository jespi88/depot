class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
end

def add_product(product_id)
  current_item = line_items.find_by_product_id(product_id)
  if current_item
    current_item_quantity += 1
  else
    current_item = line_items.build