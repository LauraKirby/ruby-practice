class BankAccount
  attr_accessor :name, :transactions, :fp
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end

  def add_transaction (description, amount)
    @transactions.push(description: description, amount: amount)
  end

  def credit (description, amount)
    @transactions.push({description: description, amount: amount})
  end

  def debit (description, amount)
    @transactions.push(description: description, amount: -amount)
  end

  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end

  def print_register
    puts "#{name}'s bank account'"
    puts "Description".ljust(30) + "Amount".rjust(10)
    puts "-" * 40
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end
    puts "-" * 40
    puts "Balance".ljust(30) + "#{sprintf("%0.2f", balance)}".rjust(10)
    puts "-" * 40
  end

  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end


  def fp
    for i in self
     puts "#{i} and the key value #{self[i]}"
    end
  end

  def foo(symbol, &block)
    binding = block.send(:binding)

    eval(symbol.to_s, binding)
  end

end

def foo(symbol, &block)
  binding = block.send(:binding)

  eval(symbol.to_s, binding)
end

bank_account = BankAccount.new("Laura")
# bank_account.credit("paycheck", 100)
# bank_account.debit("Groceries", 40)
# print floating number to 2 decimals
# puts sprintf("%0.2f", bank_account.balance)
puts bank_account.to_s
bank_account.print_register
# puts bank_account.inspect


bank_account.instance_variables.each do |var|
  puts foo (:var) {}
end



#
# var = 3
#
# puts foo(:var) {}
#
# puts result
# puts bank_account.instance_variables
# attr_reader
# will allow use to write to the attribute only one time when we instantiate the class,
# then we will only be able to read from it

# assume we don't want any other object writing to our transactions list
# so, provide an interface for working with transactions

