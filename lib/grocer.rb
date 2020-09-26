def find_item_by_name_in_collection(name, collection)
  n = nil 
  collection.each do |item| 
    if item[:item] == name 
      n = item
    end
  end
  n
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  items = [
    {:item => "AVOCADO", :price => 3.00, :clearance => true},
    {:item => "KALE", :price => 3.00, :clearance => false},
    {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
    {:item => "ALMONDS", :price => 9.00, :clearance => false},
    {:item => "TEMPEH", :price => 3.00, :clearance => true},
    {:item => "CHEESE", :price => 6.50, :clearance => false},
    {:item => "BEER", :price => 13.00, :clearance => false},
    {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
    {:item => "BEETS", :price => 2.50, :clearance => false},
    {:item => "SOY MILK", :price => 4.50, :clearance => true}
  ]
  consolidated = []
  items.each do |item|
    i = 0
    count = 0
    if find_item_by_name_in_collection(item[:item], cart) == item
      while i < cart.length do
        if cart[i] == item
          count += 1
        end
        i += 1
      end
      item[:count] = count
      consolidated << item
    end
  end
  consolidated
end