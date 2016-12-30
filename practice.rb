# # implicit return, the last line of code that is executed before the block or method is executed
#
# 3.times { puts "Hello World!" }
#
# # count to 5
# def count_up
#   max = 5
#   i = 1
#   while i <= max do
#     puts i
#     i += 1
#   end
#   yield
# end
#
#
#
# count_up { puts "You counted to 5"}
#
# # arugments can be sent into the block.
#
# def get_name
#   print "Enter your name: "
#   name = gets.chomp
#   yield name
#   # write name, so that name will be implicitly returned and stored as the value of 'my_name'
#   name
# end
#
# # store what is returned from this method in a variable
# my_name = get_name do |your_name|
#   puts "That's a cool name #{your_name}."
# end
#
# puts "my name: #{my_name}"
# puts "end"
#
# # Call the method get_name with a block.
# # Assign the block argument a variable called name.
# # Do at least one thing in the block such as printing out the name.
#
# def get_name_2
#   name = "Abby"
#   yield name
#   name
# end
#
# name = get_name_2 do |first_name|
#   puts "nice to meet you #{first_name}"
# end
#
# puts name
#
# # Another way to call the block by assigning the block to a variable.
# def get_name_3(&block)
#   name = "Abby"
#   # call the block and pass in the argument 'name'
#   block.call(name)
#   name
# end
# # keyword which lets us tell whether or not a block want sent to a method
# name = get_name_3 do |first_name|
#   puts "nice to meet you #{first_name}"
# end
#
# puts name
#
#
# # keyword which lets us tell whether or not a block want sent to a method
# def get_name_3(&block)
#   name = "Abby"
#   # call the block and pass in the argument 'name'
#   block.call(name) if block_given?
#   name
# end
#
# name = get_name_3 do |first_name|
#   puts "nice to meet you #{first_name}"
# end
#
# puts name


# # STRING - block methods
# # returns unmodified string
# str = "hello"
# str.each_char { |s| print "-#{s}-"}
# # -h--e--l--l--o- => "hello"
#
# # ARRAY - block methods
# # practing blocks with Ruby default methods
# arr = [1,2,3,4]
# arr.each { |item| print item }
#
# # orginal array remains the same
# # returns new array with [3,4]
# arr.select { |item| item > 2 }
#
# # original arry remains the same
# # returns new array with items that do not meet the given condition
# arr.reject { |item| item % 3 == 0 }
# # => [1,2,4]
#
# # count can take a block
# # returns the count of items that meet the given condition
# arr.count { |item| item % 3 == 0 }
# # => 1
#
# # HASH - block methods
# demo_hash = {"1":"hi", "2":"hola", "3":"bonjour"}
# demo_hash.each do |k, v|
#   puts "key: #{k}, value: #{v}"
# end
# demo_hash.each_key { |k| puts "key: #{k}"}
# demo_hash.each_value { |v| puts "value: #{v}"}
#
# # i might be able to use this for finding the "approved" tags
# # modifies original hash
# demo_hash.keep_if { |key, value| key == "1"}
# # => {"1":"hi"}
#
# # original hash remains the same
# # returns new array with items that do not meet the given condition
# demo_hash.keep_if { |key, value| key == "1"}
# # => {}
#
# # demo_hash
# # => {"1":"hi"}
#
# demo_hash = {"1":"hi", "2":"hola", "3":"bonjour"}
# demo_hash.select { |key, value| key == "2"}
# # => {"2":"hola"}


# # simple benchmarker
#
# class SimpleBenchMarker
#   def run(description, &block)
#     start_time = Time.now
#     block.call
#     end_time = Time.now
#     elasped = end_time - start_time
#     puts "\n"
#     puts "#{description} results"
#     puts "Elapsed time: #{elasped}"
#   end
# end
#
# # Instantiate a variable named benchmarker
# # which is an instance of the SimpleBenchmarker class.
# # to call the method we need to intantiate the class
# benchmarker = SimpleBenchMarker.new
# benchmarker.run "Sleep a random amount of time" do
#   5.times do
#     print "."
#     sleep(rand(0.1..1.0))
#   end
# end

# the code below works in irb but not when running "ruby practice.rb" from the terminal
class MyArray
  attr_reader :array
  def initialize
    @array = []
  end
end

def push(item)
  array.push(item)
end

# the block is called on each item of the array
def each(&block)
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
  array
end

my_array = MyArray.new
my_array.push(1)
my_array.push(2)
my_array.push(3)
my_array.each { |item| puts "item: #{item}" }