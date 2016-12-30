class BankAccount
  attr_accessor :name, :transactions
  def initialize(name)
    @name = name
    @transactions = []
  end
end

bank_account = BankAccount.new("Laura")
puts bank_account.inspect