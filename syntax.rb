#
# \s space
# \t tab
# \n new line
# whitespace - name for characters in a string that indicate vertical or horizontal space

name  = "laura"
# name.upcase returns name with all uppercase letters
# is not descructive of original string
laura_1 = name.upcase
puts laura_1

# descructive, will modify original string
name.upcase!

# irb so we can work with numbers

a = 1
b = 1.1
a.class
# => Fixnum
b.class
# => Float

# exponent
c = 2 ** 2
puts c

# modulus, remainder
d = 2 % 2
# => 0

d = 5 % 2
# => 1
puts d

string = "My name is #{name}"
year = 2014

# '+' is a method
# 2 + 2
# can be rewritten as
2.+(2)

# just like we would call other methods

# method - a series of statements that does a particular task identified by a name.
# define a method that can take in a variable, that variable is called an argument
# It is possible to pass variables in to methods we write.
# When a method is given a list of variables to work with, those variables are called arguments
# Arity - number of arguments accepted by a method
# what is the arity of the add method?

def add(a,b)
  puts "Adding #{a} and #{b}:"
  a + b
end

puts add(2,3)
total = add(5,5)
puts total
add(5,6)

# print contents of array
grocery_list = ["milk", "bread"]

# ADDING ITEMS TO ARRAYS
puts grocery_list.inspect
grocery_list << "eggs"
grocery_list.push ("potatos")

# push to the beginning of the array
grocery_list.unshift("kale")

# another way to add items to array
grocery_list += ["ice create", "pie"]

# any type can be added to the array
grocery_list << 1

#
grocery_list[1]
# can be similarly achieved with:
grocery_list.at(1)

# access last item in array
grocery_list[-1]

# access second to last item in array
grocery_list[-2]

# add item with a specific index
grocery_list.insert(2, "oatmeal")

# alias for 'length' method is 'count'
grocery_list.count

# find the number of times something appears in an array
grocery_list.count("eggs")

# include? to find out whether or not a value is within the array
grocery_list.include?("milk")

# REMOVING ITEMS FROM ARRAYS
# descructive
# remove last item
grocery_list.pop

# descructive
# remove first item
grocery_list.shift

# not descructive
# returns a new array with the last two items removed
grocery_list.drop(2)

# not descructive
# first 3 items
# index and number of items
# returns a new array with the 3 items, located at index 0, 1, 2
grocery_list.slice(0, 3)

# HASHES / COLLECTIONS
# array values are accessed by their index
# hash: we use an identifier (key) to describe the item (value) we want to access
# identifier can be almost any ruby type

# item = Hash.new
# or
item = {}
item = { "name" => "bread" }
# add new key
item["quantity"] = 1
# keys can also be written with symbols

# remove first item in hash
item.delete(1)

# find whether or not hash contains a specific key
item.has_key?("name")
# alias for has_key? is key?
item.key?("name")
# alias for has_key? is member?
item.member?("name")

# fetch
# not descructive
# basically the same as using []
item.fetch("name")

# add a key and a value
item.store("calories", "200")

# hash values
hash = {"item" => "bread", "quantity" => 1, "brand" => "Laura"}
hash.values

hash.has_value?("bread")
hash.has_value(1)
# => true

hash.value?(1)
# => true

hash.values_at("item", "quantity")
# => ["bread", 1]

# hash methods
# invert will transpose the keys and values into a new hash
# not descructive
puts hash.invert

# shift
# descructive
# will remove key and value and return it as an array with 2 items, the key and the value
puts hash.shift
# => ["brand", "Laura"]

# original hash now only has two keys
# {"item" => "bread", "quantity" => 1}

# merge
# returns a new hash
# allows you to merge hashes together
# call the merge method and pass in another hash
# not descructive
hash.merge({"coffee" => "blue bottle", "yogurt" => "Siggs"})
# => {"item" => "bread", "quantity" => 1, "brand" => "Laura", "coffee" => "blue bottle", "yogurt" => "Siggs"}

# when merge is called with a key that already exists within a hash
# the hash that is sent into merge will overwrite the preexisting value for that key

