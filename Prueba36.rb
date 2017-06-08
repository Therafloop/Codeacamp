class Vehicle

  def what_am_i?
  self.class
  end
  def age!
  	nil
  end
  def number_of_wheels
  	nil
  end
  def color
  	nil
  end
  def has_motor
    nil
  end
  def tank_size
  	nil
  end
  def refuel
  	nil
  end
  def number_of_gears
  	nil
  end
  def age
  	nil
  end
end

class Motorized < Vehicle
end

class Motorbike < Vehicle
end

class Car < Vehicle
end

class Bicycle < Vehicle
  def initialize (number)
  	@number = number
  end
  def age
  	@number
  end
end

class Skateboard < Vehicle

end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end