@prompt_user = true
@count = 0
@hash = {}

def create_list
  print "What is the list name? "
  name = gets.chomp

  return { "name" => name, "items" => Array.new }
end

def add_list_item(list)
  while @prompt_user == true && @count < 3 do
    @count += 1
    puts "#{@count}"
    print "What is the item called? "
    item_name = gets.chomp
    print_list(list) and return if !ask_next_question(item_name)

    @hash["name"] = item_name

    add_list_item_quantity(@hash, list)
    add_list_item(list)
  end
end

def add_list_item_quantity(hash, list)
  print "How many? "
  quantity = gets.chomp
  print_list(list) and return if !ask_next_question(quantity)

  validate_number(hash, quantity, list)
end

def validate_number(hash, quantity, list)
  quan = quantity.to_i

  if quan.class == Integer || quan.class == Fixnum && quan != 0
    hash["quantity"] = quan.to_s
    puts "here we enter the quantity #{hash}"
    hash
  else
    puts "Please enter an Integer or Float larger than 0."
    add_list_item_quantity(hash, list)
  end
end

def ask_next_question(input)
  if input == 'q'
    @prompt_user = false
    return @prompt_user
  end
  return @prompt_user
end

def print_list(list)
  puts "List: #{list['name']}\n"
  print_separator
  list['items'].each do |item|
    puts "\tItem: #{item['name']}"
    puts "\tQuantity: #{item['quantity']}"
    print_separator
  end
end

def print_separator(character="-")
  80.times { print character }
  puts "\n"
end

puts "Submit 'q' at any time to stop adding new items and to print your list."

list = create_list


# 5.times do
#   list['items'].push(add_list_item(list))
#   break if @prompt_user
# end
list['items'].push(add_list_item(list))


puts "#{list}"
# list['items'].push(add_list_item)
# print_list(list)
# puts "list.inspect (below)"