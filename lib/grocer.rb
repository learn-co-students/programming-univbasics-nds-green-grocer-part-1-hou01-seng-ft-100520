require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  x = nil #set value to be returned and default to nil
  collection.each do |item| #iterate over AoH collection and assign item to each hash
    if item[:item] == name #if item[:item] is the same as name
      x = item #set value to be returned to item hash
    end
  end
  x #return hash
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
  # 1. create emtpy array, 'consolidated'
  # 2. items.each do |item|
  #   3. set index counter
  #   4. set count to zero for items
  #   5. if find_item_by_name_in_collection(item[:item], cart)
  #     6. while index < cart.length - 1
  #       7. if cart[index] == item
  #         8. count += 1
  #       9. index += 1
  #     10. item[:count] = count
  #   11. consolidated << item
  # 12. return consolidated
  consolidated = []
  items.each do |item|
    i = 0
    count = 0
    #binding.pry
    if find_item_by_name_in_collection(item[:item], cart) == item
      #binding.pry
      while i < cart.length do
        if cart[i] == item
          count += 1
          #binding.pry
        end
        i += 1
      end
      item[:count] = count
      consolidated << item
    end
  end
  consolidated
end
