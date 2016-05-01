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

# # QUESTION 3

def test_multiple_items
  items = multiple_items(["b5", "b6", "b10"])
  distance = multiple_items(["b5", "b6", "b10"])
  assert_equal(["nail filer","tooth paste", "cookie jar"], items[0])
  assert_equal(5, distance[1])
end

# # QUESTION 4

# def test_multiple_bays
#   items = multiple_bays(["shoe lace", "rusty nail", "leg warmers"])
#   assert_equal(["c9", "c1", "c10"], items)
# end

# # def test_more_multiple_items
# #   bays = multiple_bays



# def test_more_multiple_items
#     items = multiple_items(["b3", "c7", "c9", "a3"])
#     # distance = multiple_items(["b3", "c7", "c9", "a3"])
#   assert_equal(["picture frame", "paint brush", "shoe lace", "blouse"], 15)
#   end

#   def test_items_and_bays
#       items = items_and_bays(["b3", "c7", "c9", "a3"])
#       distance = items_and_bays(["b3", "c7", "c9", "a3"])
#     assert_equal(["picture frame", "paint brush", "shoe lace", "blouse"], items)
#     end





  end
