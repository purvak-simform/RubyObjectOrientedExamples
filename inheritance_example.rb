# ruby inheritance_example.rb

# superclass Greet
class Greet
  def initialize(day = 'monday', year = 2023)
    @day = day
    @year = year
    puts "Base class Day: #{day}, Year: #{year}"
  end

  def greet
    puts 'Hello Good'
  end
end

# Morning inherits class Greet
class Morning < Greet
  def initialize(day, year)
    super
    super day
    super day, year
    super()
  end

  def greet
    super
    puts 'Morning'
  end

  def eat
    puts 'Allowed to eat'
  end
end

# Snacks class inherits class Morning
class Snacks < Morning
  def greet
    super
    puts 'Snacks'
  end
end

Snacks.new.greet
Snacks.new.eat

Morning.new
