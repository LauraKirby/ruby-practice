# instance is created through instantiation
# objects are instantiated by using the class name and then the "new" method
# "initialize" automatically gets called during instantiation
#
# the process of turing real life items into objects and classes is called domain modeling
# The process of figuring out how to represent real life items as classes and
# 0:33
# objects is called domain modeling.
#
# Ruby is considered an OO language because everything in Ruby is an object.
#
# call "methods" to see list of available methods
#
# string.methods.sort
# string.respond_to?("count")
# "respond_to?" can take a string or a symbol as an argument



class NameOne
  def title
    "Mrs"
  end

  def first_name
    "Shawna"
  end

  def last_name
    "Proia"
  end
end

name = NameOne.new
puts name
# => address in memory of the instantiated object

puts name.first_name
# => "Shawna"

puts name.last_name
# => "Proia"

# Make the Name class more of a blueprint
# by name and
# title attributes variables within the class.

# meaning, add the ability to create without providing
# the exact details, like how to build a car without
# inscrutions on the color it should be painted

# INSTANCE VARIABLES
# Available to each method within the class.
# Denoted with the "at" symbol.
class NameTwo
  def initialize(title, first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @title = title
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def title
    @title
  end
end

name = NameTwo.new("Ms.", "Laura", "Kirby")
puts name
# => address in memory of the instantiated object

puts name.title
# => "Laura"

puts name.first_name
# => "Laura"

puts name.last_name
# => "Kirby"

# Att reader
# the pattern of creating variables and then calling them
# later is done frequently in Ruby. Ruby gives us a
# shortcut method to do this, called "attr_reader", which
# stands for "attribute reader".

class NameThree
  # ruby is actually creating the method commented out below
  attr_reader :first_name, :last_name, :title

  def initialize(title, first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @title = title
  end

  # when using, attr_reader, ruby creates this method for us behind the scenes
  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end
  #
  # def title
  #   @title
  # end
end

name = NameThree.new("Ms.", "Laura", "Kirby")
puts name
# => address in memory of the instantiated object

puts name.title
# => "Laura"

puts name.first_name
# => "Laura"

puts name.last_name
# => "Kirby"


class NameFour
  # ruby is actually creating the method commented out below
  attr_reader :first_name, :last_name, :title

  def initialize(title, first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @title = title
  end

  # Create a method that will allow us to reset the title.
  # name of the method is the same as the name of the instance vaiable
  def title=(new_title)
  end

end

name = NameFour.new("Ms.", "Laura", "Kirby")
puts name
# => address in memory of the instantiated object

puts name.title = "Mx"
# The new method "title=" allows us to write to the instance variable
# => "Mx"

puts name.first_name
# => "Laura"

puts name.last_name
# => "Kirby"

# Attribute Reader / Attribute Writer / Attribute Accessor
# attr_reader
# attr_writer
# attr_accessor

# we may use different levels of accessibility not only for securing the code but also to
# make the code more clear by using one of these 3 distinctions to better clarify what the
# the method will be doing

# classes don't really have "properties" they have "instance variables" that are made accessible through class methods

# SCOPE
# scope is the visibity of variables. where we are in the method and what variables are available
# local variables -  only exist inside of a code block or method
# instance variable - available to all of the methods in the class

# Common idiom (meaning not deduicible by the words used)
# to_s
# puts -> put s - meaning to string
# many people write their own to_s method