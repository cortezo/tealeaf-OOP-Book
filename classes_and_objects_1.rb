class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @running = false
  end

  def speed_up(num)
    @current_speed += num
    puts "You speed up."
  end

  def brake(num)
    @current_speed -= num
    puts "You brake and slow down."
  end

  def shut_off_engine
    @running = false
    @current_speed = 0
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

camaro.speed_up(15)
camaro.current_speed
camaro.speed_up(25)
camaro.current_speed
camaro.brake(10)
camaro.current_speed
camaro.shut_off_engine
camaro.current_speed

puts ""

puts camaro.color
camaro.spray_paint("Ultra Yellow")
puts camaro.color
puts camaro.year
