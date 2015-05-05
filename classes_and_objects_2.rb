class MyCar
  attr_accessor :color, :running, :current_speed
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @running = false
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def to_s
    puts "#{self.year} #{self.model}, #{self.color}"
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

end

camaro = MyCar.new(1991, "Gunmetal Grey", "Camaro")

MyCar.gas_mileage(4, 432)

puts camaro
