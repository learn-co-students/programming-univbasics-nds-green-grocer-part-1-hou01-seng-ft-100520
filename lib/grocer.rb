#find_item_by_name_in_collection return a nil
#returns item in the collection

def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length #which it is 3
  #collection[counter] #collection[0] then collection[1] then collection [2] then collection[3] which will end the loop
  #now we are looking for this specific item in our collection. 
    if collection[counter][:item] == name
      return collection[counter]
    end
  counter += 1
  end
  #nil -to ensure nil is return if item is not in the collection
end

#adds a count of one to each item when there are no duplicates
#increments count when there are multiple items
#takes in an array and returns an array that every unique item and no duplicates. If there are dupes then the count will increase.

def consolidate_cart(cart)
  
  #declare new array
 new_cart = []
  
  #start with a counter so it begins at the first item
 counter = 0 
  
  #then create while loop
 while counter < cart.length 
    
    #take each item in the cart and see if it is already in the new cart
    #calling the find_item_by_name_in_collection to check if item is in the new cart. Second argument is the collection we want to search want to see if the item is in our new cart.
    #So this will return either the item found or if not found it will return nil
    
   new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
      #if item is already in cart, we just want to increase the count
    if new_cart_item != nil 
        
        #if new_cart_item does not equal nil then we want to access new_cart_item and inside we want to access the count and increase by 1
      new_cart_item[:count] += 1
        
        #otherwise, item is nil. We would need to create our item. Inside the hash we need to construct the new item in the new cart
    else
      new_cart_item = {
        :item => cart[counter][:item], 
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
          #this is the first time count is being used, the old item did not have count
        :count => 1
      }
        #after the new_cart is built, we are going to shovel new_cart_item variable
      new_cart << new_cart_item
      end
    #to ensure there is not an infinite loop 
      counter += 1
    end
  new_cart
end

#return [{:item => "name of item", :price => 3.0, :clearance => true or false, :count => 1}]
#item: {:item => "name of item", :price => 3.0, :clearance => true or false, :count => 1}