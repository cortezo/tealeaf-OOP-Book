module Loadable
  def load_cargo(cargo)
    puts "#{cargo} are now loaded into the vehicle."
  end
end


class Vehicle
  attr_accessor :color, :running, :current_speed
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @running = false

    @@number_of_vehicles += 1
  end

  def self.vehicle_count
    puts "There are #{@@number_of_vehicles} vehicles."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def speed_up(num)
    self.current_speed += num
    puts "You speed up."
  end

  def brake(num)
    self.current_speed -= num
    puts "You brake and slow down."
  end

  def shut_off_engine
    self.running = false
    self.current_speed = 0
    puts "You turn off the engine."
  end

  def current_speed
    puts "You are traveling at a rate of #{@current_speed} mph."
  end

  def spray_paint(color)
    self.color = color
    puts "#{self.color} was a great choice!"
  end

  private

  def age
    age = Time.now.year - self.year
    puts "This vehicle is #{age} years old."
  end
end



class MyCar < Vehicle

  VEHICLE_TYPE = "car"

  def initialize(year, color, model)
    super(year, color, model)
  end

  def to_s
    puts "My #{VEHICLE_TYPE} is a #{self.year} #{self.model}, #{self.color}"
  end
end



class MyTruck < Vehicle

  include Loadable

  VEHICLE_TYPE = "truck"

  def initialize(year, color, model)
    super(year, color, model)
  end

  def to_s
    puts "My #{VEHICLE_TYPE} is a #{self.year} #{self.model}, #{self.color}"
  end
end



camaro = MyCar.new(1991, "Gunmetal Grey", "Camaro")
frontier = MyTruck.new(2014, "Black", "Frontier")

puts camaro
puts frontier
Vehicle.vehicle_count

frontier.load_cargo("Apples")

puts "***** MyTruck Ancestors *****"
puts MyTruck.ancestors

puts "\n***** MyCar Ancestors *****"
puts MyCar.ancestors

puts "\n***** Vehicle Ancestors *****"
puts Vehicle.ancestors

frontier.age
