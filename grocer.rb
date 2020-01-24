def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item = nil
  
  i = 0
  while i < collection.length do
    if collection[i][:item] == name
      item = collection[i]
    end
    i += 1
  end
  
  item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  newCart = []
  
  i = 0
  while i < cart.length do
    
    index = nil
    x = 0
    while x < newCart.length do
      if newCart[:item] == cart[i][:item]
        index = x
      end
      x += 1
    end
    
    if index == nil
      newCart << cart[i]
    else
      newCart[index][:num] += 1
    end
    
    i += 1
  end
  pp cart
  pp newCart
  newCart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
