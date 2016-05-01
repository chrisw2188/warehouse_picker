
require 'pry-byebug'
WAREHOUSE = 
[
  {"a10"  => "rubber band"},
   {"a9"  => "glow stick"},
   {"a8"  =>  "model car"},
   {"a7"  =>  "bookmark"},
   {"a6"  => "shovel"},
   {"a5"  =>  "rubber duck"},
   {"a4"  => "hanger"},
   {"a3"  => "blouse"},
   {"a2"  => "stop sign"},
   {"a1"  =>  "needle"},
   {"c1"  => "rusty nail"},
   {"c2"  => "drill press"},
   {"c3"  =>  "chalk"},
   {"c4"  =>  "word search"},
   {"c5"  => "thermometer"},
   {"c6"  => "face wash"},
   {"c7"  => "paint brush"},
   {"c8"  => "candy wrapper"},
   {"c9"  => "shoe lace"},
  {"c10"  => "leg warmers"},
   {"b1"  => "tyre swing"},
   {"b2"  => "sharpie"},
   {"b3"  => "picture frame"},
   {"b4"  => "photo album"},
   {"b5"  => "nail filer"},
   {"b6"  => "tooth paste"},
   {"b7"  => "bath fizzers"},
   {"b8"  => "tissue box"},
   {"b9"  => "deodorant"},
  {"b10"  =>  "cookie jar"}
]

# QUESTION 1

def item_at_bay(bay)
  for items in WAREHOUSE
    if bay == items.keys[0]
    result = items[bay]
    end
  end
return result
end

# # QUESTION 2

def location_at_bay(item)
  for items in WAREHOUSE
    if item == items.values[0]
    result = items.keys[0]
    end
  end
return result
end

# # QUESTION 3

def multiple_items(bays)
result = []
postion = []
  for bay in bays 
    for item in WAREHOUSE
      if bay == item.keys[0]
        result.push(item.values[0])
        postion.push(WAREHOUSE.index(item))
          min = postion.min 
          max = postion.max
          distance = max - min 
      end
    end
  end
  return result, distance
end



# # QUESTION 4

def multiple_bays(items)
  result = []
    for item in items 
      for bay in WAREHOUSE
        if item == bay.values[0]
          result.push(bay.keys[0]) 
        end
      end
    end
    return result
  end

# # QUESTION 5

# # Same funtion used as for 3

def items_in_order(items)
  index = []
  result = []
    for item in items 
      for bay in WAREHOUSE
        if item == bay.values[0]
          index.push(WAREHOUSE.index(bay))
              sorted_index = index.sort
        end
      end
    end
  for postion in sorted_index
    for slot in WAREHOUSE
      if postion == WAREHOUSE.index(slot)
        result.push(slot.keys[0])
      end
    end
  end
 return result
end















