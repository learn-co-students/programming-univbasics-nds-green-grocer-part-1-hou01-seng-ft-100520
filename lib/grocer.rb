def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
 
  count = 0
  while count < collection.length do 
    if collection[count][:item] == name
      return collection[count]
    end
    count += 1
  end

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  count = 0
  new_cart = []
  
  cart.each do |item|
    scan_item = find_item_by_name_in_collection(item[:item], new_cart)
    if scan_item
      new_cart.each do |cart_item|
        if cart_item[:item] == scan_item[:item]
          cart_item[:count] += 1
        end
      end
    else
      cart[count][:count] = 1
      new_cart << cart[count]
    end
    count += 1
  end
  new_cart

end


  