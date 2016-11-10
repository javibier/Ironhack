class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
  ]


puts homes[0].city

puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

homes.each do |house|
  puts "#{house.name}'s place in #{house.city} Price: $#{house.price} a night with a capacity of #{house.capacity} people."
end

puts "++++++++++++++++++++++++++++++++++++++++"

names = []

homes.each do |home|
  names.push(home.name)
end

p names

puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

p homes

puts "________________________________________"

occupancy = homes.map do |home|
  home.capacity
end

p occupancy

puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

puts occupancy

puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

price = homes.map do |hm|
  hm.price
end

p price

puts "***************************************"

# def price_average (homes)
# 	homes.inject (homes.inject (0) { |sum, x|}