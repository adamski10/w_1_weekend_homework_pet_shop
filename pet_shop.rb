
# 1

def pet_shop_name(shop)
  return shop[:name]
end

# 2

def total_cash(shop)
  total = shop[:admin][:total_cash]
  return total
end


# 3 & 4

def add_or_remove_cash(shop, amount)
  total = shop[:admin][:total_cash] += amount
#   # total = total_cash(pet_shop)
#   # total = total + amount
  return total
end


# 5

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

 # 6 

def increase_pets_sold(pet_shop, num)
  return pet_shop[:admin][:pets_sold] += num
end

# 7

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

# 8 & 9 

def pets_by_breed(pet_shop, breed)
  breed_counter = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breed_counter << pet[:breed]
    end
  end
return breed_counter
end 

# 10 & 11

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if name == pet[:name]
  end
return nil
end

#12
def remove_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
  for pet in pets
    if name == pet[:name]
      pets.delete(pet)
    end
  end
end

#13

def add_pet_to_stock(pet_shop, new_pet)
  new_pet = {}
  pet_shop[:pets].push(new_pet)
end

# 14

def customer_cash(name)
  for customer in @customers
    if customer == name
      return customer[:cash]
    end
  end
end

# 15

def remove_customer_cash(customer, amount)
  customer_cash(customer) - amount
end

# 16

def customer_pet_count(customer)
  customer[:pets].count
end

# 17

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

