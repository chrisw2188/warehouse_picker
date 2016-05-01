require "minitest/autorun"
require_relative "../warehouse_picker_functions.rb"

class TestWarehouse < Minitest::Test

 # QUESTION 1

def test_item_at_bay
  item = item_at_bay("b5")
  assert_equal("nail filer", item)
end

# # QUESTION 2

def test_location_at_bay
  location = location_at_bay("nail filer")
  assert_equal("b5", location)
end

# # # QUESTION 3

def test_multiple_items
  items = multiple_items(["b5", "b6", "b10"])
  distance = multiple_items(["b5", "b6", "b10"])
  assert_equal(["nail filer","tooth paste", "cookie jar"], items[0])
  assert_equal(5, distance[1])
end

# # QUESTION 4

def test_multiple_bays
  items = multiple_bays(["shoe lace", "rusty nail", "leg warmers"])
  assert_equal(["c9", "c1", "c10"], items)
end

# # QUESTION 5A
# # see question 3

# # QUESTION 5B

def test_more_multiple_items
    items = multiple_items(["b3", "c7", "c9", "a3"])
    distance = multiple_items(["b3", "c7", "c9", "a3"])
  assert_equal(["picture frame", "paint brush", "shoe lace", "blouse"], items[0])
  assert_equal(15, distance[1])
end

# # QUESTION 6a

def test_items_in_order
  items = items_in_order(["shoe lace", "rusty nail", "leg warmers"])
  assert_equal(["c1", "c9", "c10"], items)
end

# # QUESTION 6b

def test_items_in_order_b
  items = items_in_order(["hanger", "deodorant", "candy wrapper", "rubber band"])
  assert_equal(["a10", "a4", "c8", "b9"], items)
end






end
