class Car
  def press_gas
	puts "The car takes off when you press the gas. Brooooooommmmm!!!"
  end
end

the_car = Car.new

the_car.press_gas

puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

class Car
  def initialize(name, speed, sound)
  	@name = name
  	@speed = speed
  	@sound = sound
  end

  def press_gas
  	  puts "The #{@name} takes off at #{@speed} when you press the gas. #{@sound}"
  
  end
end

the_mustang = Car.new("Ford Mustang", 2.0, "Brooooommmmmm")
the_mustang.press_gas

the_ferrari = Car.new("Ferrari", 4.0, "Vrooooooommmmm")
the_ferrari.press_gas

puts "+++++++++++++++++++++++++++++++++++++++++++++"


class Car
  def initialize(name, speed, sound)
  	@name = name
  	@speed = speed
  	@sound = sound

  	@cities_array = []
  end

  def press_gas
  	  puts "The #{@name} takes off at #{@speed} when you press the gas. #{@sound}"
  end

  def travel_to(city_names)
  	@cities_array.push ( city_names)
  end

  def cities_visited
  	@cities_array
  end
end

class Racingcar < Car

  def initialize(name, speed, sound)
    @superspeed = true


  def activate_nitrous
  	@superspeed = true
   	
  end 

the_mustang = Car.new("Ford Mustang", 2.0, "Brooooommmmmm")
the_mustang.press_gas
the_mustang.travel_to("Orlando")
the_mustang.travel_to("Sacramento")

p the_mustang.cities_visited

the_ferrari = Car.new("Ferrari", 4.0, "Vrooooooommmmm")
the_ferrari.press_gas
the_ferrari.travel_to("Miami")

p the_ferrari.cities_visited


