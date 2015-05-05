module Hi
  def say_hi
    puts "Hi"
  end
end

class Person
  include Hi
end

john = Person.new

john.say_hi
