def pet_shop_name(array)
  return array[:name]
end


def total_cash(array)
  return array[:admin][:total_cash]
end


def add_or_remove_cash(array, number)
  return array[:admin][:total_cash] += number
end


def pets_sold(array)
  return array[:admin][:pets_sold]
end


def increase_pets_sold(array, number)
  return array[:admin][:pets_sold] += number
end


def stock_count(array)
  return array[:pets].count()
end


def pets_by_breed(array, breed)
  british_shorthair = []
  for dog in array[:pets]
    if dog[:breed] == breed
      british_shorthair << dog
    end
  end
  return british_shorthair
end


def find_pet_by_name(array, name)
  for dog in array[:pets]
    if dog[:name] == name
      return dog
    end
  end
  return nil
end


def remove_pet_by_name(array, name)
  for x in array[:pets]
    if x[:name] == name
      array[:pets].delete(x)
    end
  end
end


def add_pet_to_stock(array_pet_shop, array_new_pet)
  return array_pet_shop[:pets] << array_new_pet
end


def customer_cash(array_customer)
  return array_customer[:cash]
end


def remove_customer_cash(array_customer, money)
  array_customer[:cash] -= money
end


#review later. Output is 0 if printed to screen. Why does this not return 0 to the test?? *initially didnt spot that i was in the first customer within the array. I was treating the problem like i was in the whole array. Simple once i realised where i was!
# def customer_pet_count(array_customer)
#  total_pets = 0
#   for pet in array_customer
#     if pet[:pets].count() != 0
#       total_pets += pet[:pets].count()
#     end
#   end
#   return total_pets
# end

def customer_pet_count(array_customer)
return array_customer[:pets].count
end


#test for function above.
# customer = {pets: []}
# puts customer[:pets].count()


def add_pet_to_customer(array_customer, array_new_pet)
  array_customer[:pets] << array_new_pet
end




#__optional


def customer_can_afford_pet(array_customer, array_new_pet)
  array_customer[:cash] >= array_new_pet[:price]
end


#got stuck on this one because i didnt clock that i had to complete all four before the assertion worked. Thought the first part was the issue when it was actually fine. Outcome of '1' for the first two confused me when reading the errors.
def sell_pet_to_customer(array_pet_shop, pet, array_customer)
  for x in array_pet_shop[:pets]
    if x == pet && array_customer[:cash] >= x[:price]
      array_customer[:pets] << x
      array_pet_shop[:admin][:pets_sold] += 1
      array_customer[:cash] -= x[:price]
      array_pet_shop[:admin][:total_cash] += pet[:price]
    end
  end
end
