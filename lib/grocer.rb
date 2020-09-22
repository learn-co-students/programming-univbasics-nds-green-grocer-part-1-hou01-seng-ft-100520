def find_item_by_name_in_collection(name, collection)
  collection.each{|item|
    if item[:item] == name then
      return item
    end
  }
  return nil
end

def consolidate_cart(cart)
  new_cart = [];
  cart.each do
    |item_in_cart|
    
    if not (find_item_by_name_in_collection(item_in_cart[:item], new_cart)) then
      new_cart.push(
        {
          :item => item_in_cart[:item],
          :price => item_in_cart[:price],
          :clearance => item_in_cart[:clearance],
          :count => 1
        }
        )
    else
      new_cart.each{|item| if item[:item] == item_in_cart[:item] then item[:count] += 1 end}
    end
  end
  new_cart
end



consolidate_cart([
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false},
  {:item => "Apple", :price => 3.00, :clearance => false},
  {:item => "KALE", :price => 3.00, :clearance => false},
]);
