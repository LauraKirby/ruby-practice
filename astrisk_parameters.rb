hi = "hello"
bye = "bye"

empty_var = nil
# *vars will hold Array of all arguments
  def test_asterisk(*vars)
    puts vars
    # vars.each { |var| puts var}

  end

test_asterisk(hi, bye, empty_var)

