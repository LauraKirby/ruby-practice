class Monster
  attr_reader :name, :actions, :home

  def initialize(name)
    # @name is an instance variable?
    @name = name
    @home = "Monstervile"
    @actions = {
      screams: 0,
      scares: 0,
      runs: 0,
      hides: 0
    }
  end

  def say(&block)
    print "#{name} says... "
    # here 'self' is our instance of Monster
    yield self if block_given?
  end

  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams... "
    yield
  end

  def scare(&block)
    actions[:scares] += 1
    puts "#{name} scared the human. "
    yield
  end

  def run(&block)
    actions[:runs] += 1
    puts "#{name} runs away. "
    yield
  end

  def hide(&block)
    actions[:hides] += 1
    puts "#{name} hides under the bed. "
    yield
  end

  def print_scoreboard
    puts "\n ----------------- "
    puts " #{name} scoreboard "
    puts " - Screams: #{actions[:screams]} "
    puts " - Runs: #{actions[:runs]} "
    puts " - Hides: #{actions[:hides]} "
    puts " ----------------- \n"
  end

  # we could use the Ruby 'inspect' method, here we are creating a custom inspect
  def inspect
    puts "<#{name}, #{actions}>"
  end
end

monster = Monster.new("Fluffy")
monster.say do |m|
  puts "Hi, my name is #{m.name}. I'm from #{m.home}"
  puts m.actions.inspect
end
monster.scream do
  puts "BOO!"
end
monster.scare { puts "Oh no, I scared the human."}
monster.run { puts "Humans are scary!"}
monster.hide { puts "They will never find me under the bed."}
monster.print_scoreboard
monster.inspect

puts "hello
laura
how
are
you"