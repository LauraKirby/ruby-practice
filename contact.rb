class Contact
  attr_writer :first_name, :middle_name, :last_name

  # def initialize(first, middle, last)
  #
  # end

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def first_and_last
    first_name + " " + last_name
  end

  def full_name
    full_name = first_name
    full_name += " "
    if @middle_name
      full_name += middle_name
      full_name += " "
    end
    full_name += last_name
  end

  def last_first
    last_first = last_name + " "
    if @middle_name
      last_first += middle_name.slice(0, 1)
      last_first += ", "
    end
    last_first + first_name
  end

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_and_last
    end
  end
end

laura = Contact.new
laura.first_name = "Laura"
laura.middle_name = "Colleen"
laura.last_name = "Kirby"

puts laura.to_s("full_name")